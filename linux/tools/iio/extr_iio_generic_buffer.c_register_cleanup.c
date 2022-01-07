
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;


 int ARRAY_SIZE (int const*) ;
 int const SIGABRT ;
 int const SIGINT ;
 int const SIGTERM ;
 int exit (int) ;
 int perror (char*) ;
 int sig_handler ;
 int sigaction (int const,struct sigaction*,int *) ;

void register_cleanup(void)
{
 struct sigaction sa = { .sa_handler = sig_handler };
 const int signums[] = { SIGINT, SIGTERM, SIGABRT };
 int ret, i;

 for (i = 0; i < ARRAY_SIZE(signums); ++i) {
  ret = sigaction(signums[i], &sa, ((void*)0));
  if (ret) {
   perror("Failed to register signal handler");
   exit(-1);
  }
 }
}
