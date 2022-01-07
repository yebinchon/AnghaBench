
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kp; } ;
struct trace_kprobe {TYPE_1__ rp; } ;


 int enable_kprobe (int *) ;
 int enable_kretprobe (TYPE_1__*) ;
 int trace_kprobe_has_gone (struct trace_kprobe*) ;
 scalar_t__ trace_kprobe_is_registered (struct trace_kprobe*) ;
 scalar_t__ trace_kprobe_is_return (struct trace_kprobe*) ;

__attribute__((used)) static inline int __enable_trace_kprobe(struct trace_kprobe *tk)
{
 int ret = 0;

 if (trace_kprobe_is_registered(tk) && !trace_kprobe_has_gone(tk)) {
  if (trace_kprobe_is_return(tk))
   ret = enable_kretprobe(&tk->rp);
  else
   ret = enable_kprobe(&tk->rp.kp);
 }

 return ret;
}
