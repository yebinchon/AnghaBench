
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SLang_init_tty (int ,int ,int ) ;
 int SLang_reset_tty () ;
 int SLsmg_refresh () ;
 int fflush (int ) ;
 int pr_debug (char*,char*) ;
 int pr_warning (char*,char*) ;
 int printf (char*) ;
 int stdout ;
 scalar_t__ system (char*) ;

void run_script(char *cmd)
{
 pr_debug("Running %s\n", cmd);
 SLang_reset_tty();
 if (system(cmd) < 0)
  pr_warning("Cannot run %s\n", cmd);




 printf("\033[c\033[H\033[J");
 fflush(stdout);
 SLang_init_tty(0, 0, 0);
 SLsmg_refresh();
}
