
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* signal; } ;
struct TYPE_2__ {int wait_chldexit; } ;


 int TASK_INTERRUPTIBLE ;
 int __wake_up_sync_key (int *,int ,int,struct task_struct*) ;

void __wake_up_parent(struct task_struct *p, struct task_struct *parent)
{
 __wake_up_sync_key(&parent->signal->wait_chldexit,
    TASK_INTERRUPTIBLE, 1, p);
}
