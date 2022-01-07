
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {void* data; } ;


 TYPE_1__* to_kthread (struct task_struct*) ;

void *kthread_data(struct task_struct *task)
{
 return to_kthread(task)->data;
}
