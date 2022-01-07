
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void usage(char *cmd)
{
 printf("eBPF test program to count packets from various IP addresses\n"
  "Usage: %s <options>\n"
  "       --help,   -h  this menu\n"
  "       --delay,  -d  <delay>  wait <delay> sec between prints [1 - 1000000]\n"
  , cmd
  );
}
