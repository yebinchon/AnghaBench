
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*) ;
 int stderr ;

void print_usage(void)
{
 fprintf(stderr, "Usage: lsgpio [options]...\n"
  "List GPIO chips, lines and states\n"
  "  -n <name>  List GPIOs on a named device\n"
  "  -?         This helptext\n"
 );
}
