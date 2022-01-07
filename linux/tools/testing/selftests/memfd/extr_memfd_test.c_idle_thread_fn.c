
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIGTERM ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigwait (int *,int*) ;

__attribute__((used)) static int idle_thread_fn(void *arg)
{
 sigset_t set;
 int sig;


 sigemptyset(&set);
 sigaddset(&set, SIGTERM);
 sigwait(&set, &sig);

 return 0;
}
