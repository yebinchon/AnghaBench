
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class_key {int dummy; } ;
struct kthread_worker {int delayed_work_list; int work_list; int lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int lockdep_set_class_and_name (int *,struct lock_class_key*,char const*) ;
 int memset (struct kthread_worker*,int ,int) ;
 int raw_spin_lock_init (int *) ;

void __kthread_init_worker(struct kthread_worker *worker,
    const char *name,
    struct lock_class_key *key)
{
 memset(worker, 0, sizeof(struct kthread_worker));
 raw_spin_lock_init(&worker->lock);
 lockdep_set_class_and_name(&worker->lock, key, name);
 INIT_LIST_HEAD(&worker->work_list);
 INIT_LIST_HEAD(&worker->delayed_work_list);
}
