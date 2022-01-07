
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;
 int stop ;

__attribute__((used)) static void int_exit(int signo)
{
 fprintf(stderr, "Stopping...\n");
 stop = 1;
}
