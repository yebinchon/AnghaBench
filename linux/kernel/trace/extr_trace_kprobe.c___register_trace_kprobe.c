
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {TYPE_3__ kp; } ;
struct TYPE_4__ {int nr_args; int * args; } ;
struct trace_kprobe {TYPE_2__ rp; TYPE_1__ tp; } ;


 int EINVAL ;
 int KPROBE_FLAG_DISABLED ;
 int LOCKDOWN_KPROBES ;
 int pr_warn (char*,int ) ;
 int register_kprobe (TYPE_3__*) ;
 int register_kretprobe (TYPE_2__*) ;
 int security_locked_down (int ) ;
 scalar_t__ trace_kprobe_is_registered (struct trace_kprobe*) ;
 scalar_t__ trace_kprobe_is_return (struct trace_kprobe*) ;
 int trace_kprobe_symbol (struct trace_kprobe*) ;
 scalar_t__ trace_probe_is_enabled (TYPE_1__*) ;
 int traceprobe_update_arg (int *) ;
 scalar_t__ within_notrace_func (struct trace_kprobe*) ;

__attribute__((used)) static int __register_trace_kprobe(struct trace_kprobe *tk)
{
 int i, ret;

 ret = security_locked_down(LOCKDOWN_KPROBES);
 if (ret)
  return ret;

 if (trace_kprobe_is_registered(tk))
  return -EINVAL;

 if (within_notrace_func(tk)) {
  pr_warn("Could not probe notrace function %s\n",
   trace_kprobe_symbol(tk));
  return -EINVAL;
 }

 for (i = 0; i < tk->tp.nr_args; i++) {
  ret = traceprobe_update_arg(&tk->tp.args[i]);
  if (ret)
   return ret;
 }


 if (trace_probe_is_enabled(&tk->tp))
  tk->rp.kp.flags &= ~KPROBE_FLAG_DISABLED;
 else
  tk->rp.kp.flags |= KPROBE_FLAG_DISABLED;

 if (trace_kprobe_is_return(tk))
  ret = register_kretprobe(&tk->rp);
 else
  ret = register_kprobe(&tk->rp.kp);

 return ret;
}
