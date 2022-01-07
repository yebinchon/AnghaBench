
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct syscall_enter_args {int dummy; } ;



int syscall_unaugmented(struct syscall_enter_args *args)
{
 return 1;
}
