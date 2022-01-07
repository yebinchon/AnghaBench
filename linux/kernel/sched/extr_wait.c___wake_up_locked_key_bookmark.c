
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_entry_t ;
struct wait_queue_head {int dummy; } ;


 int __wake_up_common (struct wait_queue_head*,unsigned int,int,int ,void*,int *) ;

void __wake_up_locked_key_bookmark(struct wait_queue_head *wq_head,
  unsigned int mode, void *key, wait_queue_entry_t *bookmark)
{
 __wake_up_common(wq_head, mode, 1, 0, key, bookmark);
}
