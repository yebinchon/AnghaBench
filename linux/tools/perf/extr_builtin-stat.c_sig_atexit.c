
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGCHLD ;
 int SIGTERM ;
 int SIG_BLOCK ;
 int SIG_DFL ;
 int SIG_SETMASK ;
 int child_pid ;
 int getpid () ;
 int kill (int,int) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int,int ) ;
 int signr ;
 int sigprocmask (int ,int *,int *) ;

__attribute__((used)) static void sig_atexit(void)
{
 sigset_t set, oset;







 sigemptyset(&set);
 sigaddset(&set, SIGCHLD);
 sigprocmask(SIG_BLOCK, &set, &oset);

 if (child_pid != -1)
  kill(child_pid, SIGTERM);

 sigprocmask(SIG_SETMASK, &oset, ((void*)0));

 if (signr == -1)
  return;

 signal(signr, SIG_DFL);
 kill(getpid(), signr);
}
