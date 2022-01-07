
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int * map_fd ;
 int print_ip_map (int ) ;
 int printf (char*) ;

__attribute__((used)) static void int_exit(int sig)
{
 printf("\n");
 print_ip_map(map_fd[0]);
 exit(0);
}
