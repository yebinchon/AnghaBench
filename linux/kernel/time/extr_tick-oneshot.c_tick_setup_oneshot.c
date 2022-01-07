
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {void (* event_handler ) (struct clock_event_device*) ;} ;
typedef int ktime_t ;


 int CLOCK_EVT_STATE_ONESHOT ;
 int clockevents_program_event (struct clock_event_device*,int ,int) ;
 int clockevents_switch_state (struct clock_event_device*,int ) ;

void tick_setup_oneshot(struct clock_event_device *newdev,
   void (*handler)(struct clock_event_device *),
   ktime_t next_event)
{
 newdev->event_handler = handler;
 clockevents_switch_state(newdev, CLOCK_EVT_STATE_ONESHOT);
 clockevents_program_event(newdev, next_event, 1);
}
