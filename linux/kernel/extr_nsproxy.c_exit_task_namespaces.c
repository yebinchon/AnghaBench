
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int switch_task_namespaces (struct task_struct*,int *) ;

void exit_task_namespaces(struct task_struct *p)
{
 switch_task_namespaces(p, ((void*)0));
}
