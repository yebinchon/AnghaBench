
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cleanup () ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

void sig_handler(int signum)
{
 fprintf(stderr, "Caught signal %d\n", signum);
 cleanup();
 exit(-signum);
}
