
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int * sa_handler; } ;
typedef int sa ;


 int SIGINT ;
 int SIGUSR1 ;
 int err (int,char*) ;
 int memset (struct sigaction*,int ,int) ;
 scalar_t__ sigaction (int ,struct sigaction*,int *) ;
 int signal_handler ;

void setup_signal_handler(void)
{
 struct sigaction sa;

 memset(&sa, 0, sizeof(sa));

 sa.sa_handler = &signal_handler;

 if (sigaction(SIGINT, &sa, ((void*)0)) < 0)
  err(1, "sigaction SIGINT");
 if (sigaction(SIGUSR1, &sa, ((void*)0)) < 0)
  err(1, "sigaction SIGUSR1");
}
