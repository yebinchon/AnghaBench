
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VCRITICAL ;
 int VINFO ;
 int VQUIET ;
 int printf (char*,...) ;

void usage(char *prog)
{
 printf("Usage: %s\n", prog);
 printf("  -c	Use color\n");
 printf("  -h	Display this help message\n");
 printf("  -v L	Verbosity level: %d=QUIET %d=CRITICAL %d=INFO\n",
        VQUIET, VCRITICAL, VINFO);
}
