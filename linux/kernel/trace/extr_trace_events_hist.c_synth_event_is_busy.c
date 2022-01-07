
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_event {scalar_t__ ref; } ;
struct dyn_event {int dummy; } ;


 struct synth_event* to_synth_event (struct dyn_event*) ;

__attribute__((used)) static bool synth_event_is_busy(struct dyn_event *ev)
{
 struct synth_event *event = to_synth_event(ev);

 return event->ref != 0;
}
