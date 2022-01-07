
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ make_it_fail; } ;
struct fault_attr {int dummy; } ;


 scalar_t__ in_task () ;

__attribute__((used)) static bool fail_task(struct fault_attr *attr, struct task_struct *task)
{
 return in_task() && task->make_it_fail;
}
