
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swait_queue_head {int task_list; int lock; } ;
struct lock_class_key {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int lockdep_set_class_and_name (int *,struct lock_class_key*,char const*) ;
 int raw_spin_lock_init (int *) ;

void __init_swait_queue_head(struct swait_queue_head *q, const char *name,
        struct lock_class_key *key)
{
 raw_spin_lock_init(&q->lock);
 lockdep_set_class_and_name(&q->lock, key, name);
 INIT_LIST_HEAD(&q->task_list);
}
