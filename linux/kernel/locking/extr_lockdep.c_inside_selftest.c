
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ current ;
 scalar_t__ lockdep_selftest_task_struct ;

__attribute__((used)) static bool inside_selftest(void)
{
 return current == lockdep_selftest_task_struct;
}
