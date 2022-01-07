
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int * sa_sigaction; } ;
typedef int sigset_t ;
typedef int act ;


 int SA_SIGINFO ;
 int SIGSYS ;
 int SIG_UNBLOCK ;
 int emulator ;
 int memset (struct sigaction*,int ,int) ;
 int perror (char*) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

__attribute__((used)) static int install_emulator(void)
{
 struct sigaction act;
 sigset_t mask;
 memset(&act, 0, sizeof(act));
 sigemptyset(&mask);
 sigaddset(&mask, SIGSYS);

 act.sa_sigaction = &emulator;
 act.sa_flags = SA_SIGINFO;
 if (sigaction(SIGSYS, &act, ((void*)0)) < 0) {
  perror("sigaction");
  return -1;
 }
 if (sigprocmask(SIG_UNBLOCK, &mask, ((void*)0))) {
  perror("sigprocmask");
  return -1;
 }
 return 0;
}
