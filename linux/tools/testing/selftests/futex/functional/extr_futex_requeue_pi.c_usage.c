
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
 printf("  -b	Broadcast wakeup (all waiters)\n");
 printf("  -c	Use color\n");
 printf("  -h	Display this help message\n");
 printf("  -l	Lock the pi futex across requeue\n");
 printf("  -o	Use a third party pi futex owner during requeue (cancels -l)\n");
 printf("  -t N	Timeout in nanoseconds (default: 0)\n");
 printf("  -v L	Verbosity level: %d=QUIET %d=CRITICAL %d=INFO\n",
        VQUIET, VCRITICAL, VINFO);
}
