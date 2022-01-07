
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int dummy; } ;


 int __wake_up_common (struct wait_queue_head*,unsigned int,int,int ,int *,int *) ;

void __wake_up_locked(struct wait_queue_head *wq_head, unsigned int mode, int nr)
{
 __wake_up_common(wq_head, mode, nr, 0, ((void*)0), ((void*)0));
}
