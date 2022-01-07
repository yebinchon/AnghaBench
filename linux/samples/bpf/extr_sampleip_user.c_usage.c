
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static void usage(void)
{
 printf("USAGE: sampleip [-F freq] [duration]\n");
 printf("       -F freq    # sample frequency (Hertz), default 99\n");
 printf("       duration   # sampling duration (seconds), default 5\n");
}
