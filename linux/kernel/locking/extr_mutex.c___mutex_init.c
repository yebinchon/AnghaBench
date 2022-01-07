
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex {int osq; int wait_list; int wait_lock; int owner; } ;
struct lock_class_key {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_long_set (int *,int ) ;
 int debug_mutex_init (struct mutex*,char const*,struct lock_class_key*) ;
 int osq_lock_init (int *) ;
 int spin_lock_init (int *) ;

void
__mutex_init(struct mutex *lock, const char *name, struct lock_class_key *key)
{
 atomic_long_set(&lock->owner, 0);
 spin_lock_init(&lock->wait_lock);
 INIT_LIST_HEAD(&lock->wait_list);




 debug_mutex_init(lock, name, key);
}
