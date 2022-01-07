
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int poll; } ;
struct perf_event {int mmap_mutex; struct ring_buffer* rb; int waitq; } ;
struct file {struct perf_event* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLHUP ;
 int atomic_xchg (int *,int ) ;
 scalar_t__ is_event_hup (struct perf_event*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static __poll_t perf_poll(struct file *file, poll_table *wait)
{
 struct perf_event *event = file->private_data;
 struct ring_buffer *rb;
 __poll_t events = EPOLLHUP;

 poll_wait(file, &event->waitq, wait);

 if (is_event_hup(event))
  return events;





 mutex_lock(&event->mmap_mutex);
 rb = event->rb;
 if (rb)
  events = atomic_xchg(&rb->poll, 0);
 mutex_unlock(&event->mmap_mutex);
 return events;
}
