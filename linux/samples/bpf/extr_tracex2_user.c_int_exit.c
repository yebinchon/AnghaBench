
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int * map_fd ;
 int print_hist (int ) ;

__attribute__((used)) static void int_exit(int sig)
{
 print_hist(map_fd[1]);
 exit(0);
}
