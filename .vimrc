" VIM configuration file
" Author: VIP


" ------------------------------------------------------------------------------ 
" BASIC STUFF:

set nocompatible                " VI old stuff not enabled
syntax enable                   " enable syntax
filetype plugin on              " enable built-in pluggin

" searches
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, 
                                    "case-sensitive otherwise

" indentation
set autoindent                  " always set autoindenting on
"set copyindent                 " copy the previous indentation on autoindenting
set smartindent                 "
set smarttab                    " insert tabs on the start of a line according to
                                    "shiftwidth, not tabstop
set expandtab                   " 
set tabstop=4                   " number of spaces on tabstop
set softtabstop=4               " 
set shiftwidth=4                " number of spaces to use for autoindenting

" history
"set history=1000               " remember 1000 commands
"set undolevels=1000            " remember 1000 undos

" others
" set textwidth=80               " maximum number of text before jump to next line
set nowrap                      " don't wrap lines
set showmatch                   " show matching parenthesis
set number                      " always show line numbers
set title                       " change the terminal's title
set visualbell                  " visual response for error
set noerrorbells                " dont beep
set mouse=a                     " enable mouse

set foldmethod=manual           " folding using identation 

filetype plugin indent on

autocmd Filetype python set et 
autocmd Filetype c set et
autocmd Filetype lisp set et
"autocmd Filetype python set et smarttab ts=4 sw=4 list lcs=tab:>-,trail:.,nbsp:_
"autocmd Filetype c set et smarttab ts=4 sw=4 list lcs=tab:>-,trail:.,nbsp:_

" ------------------------------------------------------------------------------ 
" FINDING FILES:

set path+=**                    " Search down into subfolders
                                    " Provides tab-completion for all
                                    " file-related tasks
set wildmenu                    " Display all matching files when we tab complete

" TIPS to remember:
" :find <file>                  Search for files you can use tab to autocomplete 
" :b <buffer>                   You can put the substring to change buffer

" ------------------------------------------------------------------------------ 
" TAG JUMPING:

" Create tags (talvez de merda)
command! MakeTags !ctags -R .   

"TIPS to remember:
" ^] to jump to tags under cursor
" g^] for ambiguous tags

" ------------------------------------------------------------------------------ 
" AUTOCOMPLETE:

"TIPS to remember:
" ^n        to show list of keyword in 'complete'
" ^x^n      to show keywords in file 
" ^x^k      to show keywords in 'dictionary'
" ^x^]      to show keywords in 'tags'
" ^x^f      to show keywords in filenames

" ------------------------------------------------------------------------------ 
" FILE BROWSING:

let g:netrw_banner=0            " disable annoying banner
let g:netrw_browse_split=4      " open in prior window
let g:netrw_altv=1              " open splits to the right
let g:netrw_liststyle=3         " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" TIPS to remember:
" :edit                         Open filebrowsing

" ------------------------------------------------------------------------------ 
" MAPPING AND SNIPPETS:

" paste html template
nnoremap ,html dd:-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
" maps ,/ to clear highlight
nmap <silent> ,/ :nohlsearch<CR>

" TIPS to remember:
" understand this line and you will have super powers in vim
" <CR> means ENTER

" ------------------------------------------------------------------------------ 
" PLUGGINS:
