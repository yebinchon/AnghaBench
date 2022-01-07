
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int dummy; } ;


 int __wake_up_common_lock (struct wait_queue_head*,unsigned int,int,int ,void*) ;

void __wake_up(struct wait_queue_head *wq_head, unsigned int mode,
   int nr_exclusive, void *key)
{
 __wake_up_common_lock(wq_head, mode, nr_exclusive, 0, key);
}
