
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int dummy; } ;
struct perf_event {int cpu; scalar_t__ ctx; scalar_t__ clock; scalar_t__ pmu; int mmap_mutex; int mmap_count; } ;


 int EINVAL ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ has_aux (struct perf_event*) ;
 scalar_t__ is_write_backward (struct perf_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ring_buffer_attach (struct perf_event*,struct ring_buffer*) ;
 struct ring_buffer* ring_buffer_get (struct perf_event*) ;

__attribute__((used)) static int
perf_event_set_output(struct perf_event *event, struct perf_event *output_event)
{
 struct ring_buffer *rb = ((void*)0);
 int ret = -EINVAL;

 if (!output_event)
  goto set;


 if (event == output_event)
  goto out;




 if (output_event->cpu != event->cpu)
  goto out;




 if (output_event->cpu == -1 && output_event->ctx != event->ctx)
  goto out;




 if (output_event->clock != event->clock)
  goto out;





 if (is_write_backward(output_event) != is_write_backward(event))
  goto out;




 if (has_aux(event) && has_aux(output_event) &&
     event->pmu != output_event->pmu)
  goto out;

set:
 mutex_lock(&event->mmap_mutex);

 if (atomic_read(&event->mmap_count))
  goto unlock;

 if (output_event) {

  rb = ring_buffer_get(output_event);
  if (!rb)
   goto unlock;
 }

 ring_buffer_attach(event, rb);

 ret = 0;
unlock:
 mutex_unlock(&event->mmap_mutex);

out:
 return ret;
}
