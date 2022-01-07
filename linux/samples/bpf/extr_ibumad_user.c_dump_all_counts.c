
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_counts (int ) ;
 int * map_fd ;
 int printf (char*) ;

__attribute__((used)) static void dump_all_counts(void)
{
 printf("Read 'Class : count'\n");
 dump_counts(map_fd[0]);
 printf("Write 'Class : count'\n");
 dump_counts(map_fd[1]);
}
