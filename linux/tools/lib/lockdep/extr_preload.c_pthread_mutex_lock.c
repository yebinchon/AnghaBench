
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pthread_mutex_t ;
struct TYPE_2__ {int dep_map; } ;


 scalar_t__ _RET_IP_ ;
 TYPE_1__* __get_lock (int *) ;
 int ll_pthread_mutex_lock (int *) ;
 int lock_acquire (int *,int ,int ,int ,int,int *,unsigned long) ;
 int lock_release (int *,int ,unsigned long) ;
 int try_init_preload () ;

int pthread_mutex_lock(pthread_mutex_t *mutex)
{
 int r;

 try_init_preload();

 lock_acquire(&__get_lock(mutex)->dep_map, 0, 0, 0, 1, ((void*)0),
   (unsigned long)_RET_IP_);
 r = ll_pthread_mutex_lock(mutex);
 if (r)
  lock_release(&__get_lock(mutex)->dep_map, 0, (unsigned long)_RET_IP_);

 return r;
}
