
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int system; } ;
struct synth_event {TYPE_1__ class; } ;
struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;


 int __synth_event_show (struct seq_file*,struct synth_event*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 struct synth_event* to_synth_event (struct dyn_event*) ;

__attribute__((used)) static int synth_event_show(struct seq_file *m, struct dyn_event *ev)
{
 struct synth_event *event = to_synth_event(ev);

 seq_printf(m, "s:%s/", event->class.system);

 return __synth_event_show(m, event);
}
