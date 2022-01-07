
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {unsigned long long mult; unsigned long long shift; scalar_t__ (* set_next_event ) (unsigned long,struct clock_event_device*) ;int retries; int next_event; scalar_t__ min_delta_ns; } ;
typedef scalar_t__ int64_t ;


 int ETIME ;
 scalar_t__ clockevent_state_shutdown (struct clock_event_device*) ;
 int ktime_add_ns (int ,scalar_t__) ;
 int ktime_get () ;
 scalar_t__ stub1 (unsigned long,struct clock_event_device*) ;

__attribute__((used)) static int clockevents_program_min_delta(struct clock_event_device *dev)
{
 unsigned long long clc;
 int64_t delta = 0;
 int i;

 for (i = 0; i < 10; i++) {
  delta += dev->min_delta_ns;
  dev->next_event = ktime_add_ns(ktime_get(), delta);

  if (clockevent_state_shutdown(dev))
   return 0;

  dev->retries++;
  clc = ((unsigned long long) delta * dev->mult) >> dev->shift;
  if (dev->set_next_event((unsigned long) clc, dev) == 0)
   return 0;
 }
 return -ETIME;
}
