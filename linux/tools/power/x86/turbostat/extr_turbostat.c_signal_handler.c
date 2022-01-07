
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug ;
 int exit_requested ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void signal_handler (int signal)
{
 switch (signal) {
 case 129:
  exit_requested = 1;
  if (debug)
   fprintf(stderr, " SIGINT\n");
  break;
 case 128:
  if (debug > 1)
   fprintf(stderr, "SIGUSR1\n");
  break;
 }
}
