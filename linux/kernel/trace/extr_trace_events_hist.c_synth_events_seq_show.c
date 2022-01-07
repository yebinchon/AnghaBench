
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;


 int __synth_event_show (struct seq_file*,int ) ;
 int is_synth_event (struct dyn_event*) ;
 int to_synth_event (struct dyn_event*) ;

__attribute__((used)) static int synth_events_seq_show(struct seq_file *m, void *v)
{
 struct dyn_event *ev = v;

 if (!is_synth_event(ev))
  return 0;

 return __synth_event_show(m, to_synth_event(ev));
}
