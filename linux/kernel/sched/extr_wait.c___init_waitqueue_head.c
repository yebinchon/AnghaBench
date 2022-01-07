
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wait_queue_head {int head; int lock; } ;
struct lock_class_key {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int lockdep_set_class_and_name (int *,struct lock_class_key*,char const*) ;
 int spin_lock_init (int *) ;

void __init_waitqueue_head(struct wait_queue_head *wq_head, const char *name, struct lock_class_key *key)
{
 spin_lock_init(&wq_head->lock);
 lockdep_set_class_and_name(&wq_head->lock, key, name);
 INIT_LIST_HEAD(&wq_head->head);
}
