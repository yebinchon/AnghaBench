
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nmissed; } ;
struct TYPE_4__ {TYPE_1__ kp; } ;
struct trace_kprobe {TYPE_2__ rp; int tp; } ;
struct seq_file {int dummy; } ;
struct dyn_event {int dummy; } ;


 int is_trace_kprobe (struct dyn_event*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;
 struct trace_kprobe* to_trace_kprobe (struct dyn_event*) ;
 int trace_kprobe_nhit (struct trace_kprobe*) ;
 int trace_probe_name (int *) ;

__attribute__((used)) static int probes_profile_seq_show(struct seq_file *m, void *v)
{
 struct dyn_event *ev = v;
 struct trace_kprobe *tk;

 if (!is_trace_kprobe(ev))
  return 0;

 tk = to_trace_kprobe(ev);
 seq_printf(m, "  %-44s %15lu %15lu\n",
     trace_probe_name(&tk->tp),
     trace_kprobe_nhit(tk),
     tk->rp.kp.nmissed);

 return 0;
}
