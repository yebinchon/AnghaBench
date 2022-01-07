
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synth_event {scalar_t__ ref; } ;
struct dyn_event {int dummy; } ;


 int EBUSY ;
 int dyn_event_remove (struct dyn_event*) ;
 int free_synth_event (struct synth_event*) ;
 struct synth_event* to_synth_event (struct dyn_event*) ;
 int unregister_synth_event (struct synth_event*) ;

__attribute__((used)) static int synth_event_release(struct dyn_event *ev)
{
 struct synth_event *event = to_synth_event(ev);
 int ret;

 if (event->ref)
  return -EBUSY;

 ret = unregister_synth_event(event);
 if (ret)
  return ret;

 dyn_event_remove(ev);
 free_synth_event(event);
 return 0;
}
