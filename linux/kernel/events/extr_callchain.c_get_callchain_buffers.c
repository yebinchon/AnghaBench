
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int EOVERFLOW ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int alloc_callchain_buffers () ;
 int atomic_dec (int *) ;
 int atomic_inc_return (int *) ;
 int callchain_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nr_callchain_events ;
 int sysctl_perf_event_max_stack ;

int get_callchain_buffers(int event_max_stack)
{
 int err = 0;
 int count;

 mutex_lock(&callchain_mutex);

 count = atomic_inc_return(&nr_callchain_events);
 if (WARN_ON_ONCE(count < 1)) {
  err = -EINVAL;
  goto exit;
 }
 if (event_max_stack > sysctl_perf_event_max_stack) {
  err = -EOVERFLOW;
  goto exit;
 }

 if (count == 1)
  err = alloc_callchain_buffers();
exit:
 if (err)
  atomic_dec(&nr_callchain_events);

 mutex_unlock(&callchain_mutex);

 return err;
}
