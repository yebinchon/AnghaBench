
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_flags; int sa_handler; } ;
typedef int act ;


 int SA_RESTART ;
 int SIGINT ;
 int memset (struct sigaction*,int ,int) ;
 int sig_int ;
 int sigaction (int ,struct sigaction*,int *) ;

__attribute__((used)) static void arm_sig_int(void)
{
 struct sigaction act;

 memset(&act, 0, sizeof(act));
 act.sa_handler = sig_int;
 act.sa_flags = SA_RESTART;
 sigaction(SIGINT, &act, ((void*)0));
}
