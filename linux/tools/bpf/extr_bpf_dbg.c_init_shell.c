
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file ;
typedef int FILE ;


 int SIGINT ;
 int emacs_meta_keymap ;
 char* getenv (char*) ;
 int intr_shell ;
 int read_history (char*) ;
 int rl_attempted_completion_function ;
 int rl_bind_key (char,int ) ;
 int rl_bind_key_in_map (char,int ,int ) ;
 scalar_t__ rl_catch_signals ;
 int rl_catch_sigwinch ;
 int rl_complete ;
 int * rl_instream ;
 int * rl_outstream ;
 int rl_prep_terminal (int ) ;
 int rl_read_init_file (char*) ;
 char* rl_readline_name ;
 int rl_set_signals () ;
 char* rl_terminal_name ;
 int shell_completion ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void init_shell(FILE *fin, FILE *fout)
{
 char file[128];

 snprintf(file, sizeof(file), "%s/.bpf_dbg_history", getenv("HOME"));
 read_history(file);

 rl_instream = fin;
 rl_outstream = fout;

 rl_readline_name = "bpf_dbg";
 rl_terminal_name = getenv("TERM");

 rl_catch_signals = 0;
 rl_catch_sigwinch = 1;

 rl_attempted_completion_function = shell_completion;

 rl_bind_key('\t', rl_complete);

 rl_bind_key_in_map('\t', rl_complete, emacs_meta_keymap);
 rl_bind_key_in_map('\033', rl_complete, emacs_meta_keymap);

 snprintf(file, sizeof(file), "%s/.bpf_dbg_init", getenv("HOME"));
 rl_read_init_file(file);

 rl_prep_terminal(0);
 rl_set_signals();

 signal(SIGINT, intr_shell);
}
