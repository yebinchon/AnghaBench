
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct winsize {int ws_col; } ;
struct TYPE_5__ {char const** argv; int in; int preexec_cb; } ;
struct TYPE_4__ {char* pager_env; } ;


 int TIOCGWINSZ ;
 int X_OK ;
 scalar_t__ access (char*,int ) ;
 int atexit (int ) ;
 int close (int) ;
 int dup2 (int,int) ;
 char* forced_pager ;
 char* getenv (char*) ;
 scalar_t__ ioctl (int,int ,struct winsize*) ;
 scalar_t__ isatty (int) ;
 char const** pager_argv ;
 int pager_columns ;
 int pager_preexec ;
 TYPE_2__ pager_process ;
 int sigchain_push_common (int ) ;
 int spawned_pager ;
 scalar_t__ start_command (TYPE_2__*) ;
 int strcmp (char const*,char*) ;
 TYPE_1__ subcmd_config ;
 int wait_for_pager ;
 int wait_for_pager_signal ;

void setup_pager(void)
{
 const char *pager = getenv(subcmd_config.pager_env);
 struct winsize sz;

 if (forced_pager)
  pager = forced_pager;
 if (!isatty(1) && !forced_pager)
  return;
 if (ioctl(1, TIOCGWINSZ, &sz) == 0)
  pager_columns = sz.ws_col;
 if (!pager)
  pager = getenv("PAGER");
 if (!(pager || access("/usr/bin/pager", X_OK)))
  pager = "/usr/bin/pager";
 if (!(pager || access("/usr/bin/less", X_OK)))
  pager = "/usr/bin/less";
 if (!pager)
  pager = "cat";
 if (!*pager || !strcmp(pager, "cat"))
  return;

 spawned_pager = 1;


 pager_argv[2] = pager;
 pager_process.argv = pager_argv;
 pager_process.in = -1;
 pager_process.preexec_cb = pager_preexec;

 if (start_command(&pager_process))
  return;


 dup2(pager_process.in, 1);
 if (isatty(2))
  dup2(pager_process.in, 2);
 close(pager_process.in);


 sigchain_push_common(wait_for_pager_signal);
 atexit(wait_for_pager);
}
