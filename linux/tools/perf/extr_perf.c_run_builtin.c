
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct cmd_struct {int option; int (* fn ) (int,char const**) ;int cmd; } ;
typedef int sbuf ;


 int RUN_SETUP ;
 int STRERR_BUFSIZE ;
 scalar_t__ S_ISFIFO (int ) ;
 scalar_t__ S_ISSOCK (int ) ;
 int USE_PAGER ;
 int bpf__clear () ;
 int check_browser_config (int ) ;
 int check_pager_config (int ) ;
 int commit_pager_choice () ;
 int errno ;
 int exit_browser (int) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 scalar_t__ fflush (int ) ;
 int fileno (int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int perf_config__exit () ;
 int perf_env ;
 int perf_env__exit (int *) ;
 int perf_env__init (int *) ;
 int perf_env__set_cmdline (int *,int,char const**) ;
 int stderr ;
 int stdout ;
 char* str_error_r (int ,char*,int) ;
 int stub1 (int,char const**) ;
 int use_browser ;
 int use_pager ;

__attribute__((used)) static int run_builtin(struct cmd_struct *p, int argc, const char **argv)
{
 int status;
 struct stat st;
 char sbuf[STRERR_BUFSIZE];

 if (use_browser == -1)
  use_browser = check_browser_config(p->cmd);

 if (use_pager == -1 && p->option & RUN_SETUP)
  use_pager = check_pager_config(p->cmd);
 if (use_pager == -1 && p->option & USE_PAGER)
  use_pager = 1;
 commit_pager_choice();

 perf_env__init(&perf_env);
 perf_env__set_cmdline(&perf_env, argc, argv);
 status = p->fn(argc, argv);
 perf_config__exit();
 exit_browser(status);
 perf_env__exit(&perf_env);
 bpf__clear();

 if (status)
  return status & 0xff;


 if (fstat(fileno(stdout), &st))
  return 0;

 if (S_ISFIFO(st.st_mode) || S_ISSOCK(st.st_mode))
  return 0;

 status = 1;

 if (fflush(stdout)) {
  fprintf(stderr, "write failure on standard output: %s",
   str_error_r(errno, sbuf, sizeof(sbuf)));
  goto out;
 }
 if (ferror(stdout)) {
  fprintf(stderr, "unknown write failure on standard output");
  goto out;
 }
 if (fclose(stdout)) {
  fprintf(stderr, "close failed on standard output: %s",
   str_error_r(errno, sbuf, sizeof(sbuf)));
  goto out;
 }
 status = 0;
out:
 return status;
}
