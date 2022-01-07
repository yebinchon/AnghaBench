
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char*) ;
 int stderr ;

void print_usage(char *argv[])
{
 fprintf(stderr, "Usage: %s [options]\n"
  "Options are:\n"
  "  -n, --no-daemon        stay in foreground, don't daemonize\n"
  "  -h, --help             print this help\n", argv[0]);
}
