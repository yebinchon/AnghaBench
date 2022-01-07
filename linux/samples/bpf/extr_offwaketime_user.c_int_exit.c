
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int * map_fd ;
 int print_stacks (int ) ;

__attribute__((used)) static void int_exit(int sig)
{
 print_stacks(map_fd[0]);
 exit(0);
}
