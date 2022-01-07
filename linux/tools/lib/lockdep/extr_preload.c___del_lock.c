
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_lookup {int node; } ;


 int free_lock (struct lock_lookup*) ;
 int ll_pthread_rwlock_unlock (int *) ;
 int ll_pthread_rwlock_wrlock (int *) ;
 int locks ;
 int locks_rwlock ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void __del_lock(struct lock_lookup *lock)
{
 ll_pthread_rwlock_wrlock(&locks_rwlock);
 rb_erase(&lock->node, &locks);
 ll_pthread_rwlock_unlock(&locks_rwlock);
 free_lock(lock);
}
