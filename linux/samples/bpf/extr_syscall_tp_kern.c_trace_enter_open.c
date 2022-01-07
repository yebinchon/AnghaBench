
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscalls_enter_open_args {int dummy; } ;


 int count (void*) ;
 int enter_open_map ;

int trace_enter_open(struct syscalls_enter_open_args *ctx)
{
 count((void *)&enter_open_map);
 return 0;
}
