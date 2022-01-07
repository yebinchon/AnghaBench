
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rotate; int mutex; int cond; struct ordered_events* in; } ;
struct perf_top {TYPE_1__ qe; } ;
struct ordered_events {int nr_events; } ;


 int OE_FLUSH__TOP ;
 int done ;
 scalar_t__ ordered_events__flush (struct ordered_events*,int ) ;
 int pr_err (char*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 struct ordered_events* rotate_queues (struct perf_top*) ;
 int usleep (int) ;

__attribute__((used)) static void *process_thread(void *arg)
{
 struct perf_top *top = arg;

 while (!done) {
  struct ordered_events *out, *in = top->qe.in;

  if (!in->nr_events) {
   usleep(100);
   continue;
  }

  out = rotate_queues(top);

  pthread_mutex_lock(&top->qe.mutex);
  top->qe.rotate = 1;
  pthread_cond_wait(&top->qe.cond, &top->qe.mutex);
  pthread_mutex_unlock(&top->qe.mutex);

  if (ordered_events__flush(out, OE_FLUSH__TOP))
   pr_err("failed to process events\n");
 }

 return ((void*)0);
}
