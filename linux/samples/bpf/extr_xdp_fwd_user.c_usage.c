
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void usage(const char *prog)
{
 fprintf(stderr,
  "usage: %s [OPTS] interface-list\n"
  "\nOPTS:\n"
  "    -d    detach program\n"
  "    -D    direct table lookups (skip fib rules)\n",
  prog);
}
