
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGWINCH ;
 int SIG_BLOCK ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;

__attribute__((used)) static void pthread__block_sigwinch(void)
{
 sigset_t set;

 sigemptyset(&set);
 sigaddset(&set, SIGWINCH);
 pthread_sigmask(SIG_BLOCK, &set, ((void*)0));
}
