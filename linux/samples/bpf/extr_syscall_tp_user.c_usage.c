
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void usage(const char *cmd)
{
 printf("USAGE: %s [-i num_progs] [-h]\n", cmd);
 printf("       -i num_progs      # number of progs of the test\n");
 printf("       -h                # help\n");
}
