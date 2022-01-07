
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int perf_event_mutex; } ;
struct perf_event {int owner; int owner_entry; } ;


 struct task_struct* READ_ONCE (int ) ;
 int SINGLE_DEPTH_NESTING ;
 int get_task_struct (struct task_struct*) ;
 int list_del_init (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int smp_store_release (int *,int *) ;

__attribute__((used)) static void perf_remove_from_owner(struct perf_event *event)
{
 struct task_struct *owner;

 rcu_read_lock();






 owner = READ_ONCE(event->owner);
 if (owner) {





  get_task_struct(owner);
 }
 rcu_read_unlock();

 if (owner) {
  mutex_lock_nested(&owner->perf_event_mutex, SINGLE_DEPTH_NESTING);







  if (event->owner) {
   list_del_init(&event->owner_entry);
   smp_store_release(&event->owner, ((void*)0));
  }
  mutex_unlock(&owner->perf_event_mutex);
  put_task_struct(owner);
 }
}
