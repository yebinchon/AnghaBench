
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscalls_exit_open_args {int dummy; } ;


 int count (void*) ;
 int exit_open_map ;

int trace_enter_exit(struct syscalls_exit_open_args *ctx)
{
 count((void *)&exit_open_map);
 return 0;
}
