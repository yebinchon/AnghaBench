
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mutex_waiter {int list; struct mutex_waiter* magic; } ;
struct mutex {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int MUTEX_DEBUG_INIT ;
 int memset (struct mutex_waiter*,int ,int) ;

void debug_mutex_lock_common(struct mutex *lock, struct mutex_waiter *waiter)
{
 memset(waiter, MUTEX_DEBUG_INIT, sizeof(*waiter));
 waiter->magic = waiter;
 INIT_LIST_HEAD(&waiter->list);
}
