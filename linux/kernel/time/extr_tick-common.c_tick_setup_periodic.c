
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; } ;
typedef int ktime_t ;


 int CLOCK_EVT_FEAT_PERIODIC ;
 int CLOCK_EVT_STATE_ONESHOT ;
 int CLOCK_EVT_STATE_PERIODIC ;
 int clockevents_program_event (struct clock_event_device*,int ,int) ;
 int clockevents_switch_state (struct clock_event_device*,int ) ;
 int jiffies_lock ;
 int ktime_add (int ,int ) ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;
 int tick_broadcast_oneshot_active () ;
 int tick_device_is_functional (struct clock_event_device*) ;
 int tick_next_period ;
 int tick_period ;
 int tick_set_periodic_handler (struct clock_event_device*,int) ;

void tick_setup_periodic(struct clock_event_device *dev, int broadcast)
{
 tick_set_periodic_handler(dev, broadcast);


 if (!tick_device_is_functional(dev))
  return;

 if ((dev->features & CLOCK_EVT_FEAT_PERIODIC) &&
     !tick_broadcast_oneshot_active()) {
  clockevents_switch_state(dev, CLOCK_EVT_STATE_PERIODIC);
 } else {
  unsigned int seq;
  ktime_t next;

  do {
   seq = read_seqbegin(&jiffies_lock);
   next = tick_next_period;
  } while (read_seqretry(&jiffies_lock, seq));

  clockevents_switch_state(dev, CLOCK_EVT_STATE_ONESHOT);

  for (;;) {
   if (!clockevents_program_event(dev, next, 0))
    return;
   next = ktime_add(next, tick_period);
  }
 }
}
