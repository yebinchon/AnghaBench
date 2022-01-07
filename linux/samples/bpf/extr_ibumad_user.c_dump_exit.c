
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_all_counts () ;
 int exit (int ) ;

__attribute__((used)) static void dump_exit(int sig)
{
 dump_all_counts();
 exit(0);
}
