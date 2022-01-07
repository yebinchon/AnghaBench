
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int dummy; } ;
struct wait_bit_key {int dummy; } ;


 int TASK_NORMAL ;
 struct wait_bit_key __WAIT_BIT_KEY_INITIALIZER (void*,int) ;
 int __wake_up (struct wait_queue_head*,int ,int,struct wait_bit_key*) ;
 scalar_t__ waitqueue_active (struct wait_queue_head*) ;

void __wake_up_bit(struct wait_queue_head *wq_head, void *word, int bit)
{
 struct wait_bit_key key = __WAIT_BIT_KEY_INITIALIZER(word, bit);

 if (waitqueue_active(wq_head))
  __wake_up(wq_head, TASK_NORMAL, 1, &key);
}
