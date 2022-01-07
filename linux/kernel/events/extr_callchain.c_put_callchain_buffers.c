
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_dec_and_mutex_lock (int *,int *) ;
 int callchain_mutex ;
 int mutex_unlock (int *) ;
 int nr_callchain_events ;
 int release_callchain_buffers () ;

void put_callchain_buffers(void)
{
 if (atomic_dec_and_mutex_lock(&nr_callchain_events, &callchain_mutex)) {
  release_callchain_buffers();
  mutex_unlock(&callchain_mutex);
 }
}
