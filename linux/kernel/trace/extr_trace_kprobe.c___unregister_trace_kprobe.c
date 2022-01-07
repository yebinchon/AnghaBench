
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * addr; scalar_t__ symbol_name; int list; int hlist; } ;
struct TYPE_3__ {TYPE_2__ kp; } ;
struct trace_kprobe {TYPE_1__ rp; } ;


 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ trace_kprobe_is_registered (struct trace_kprobe*) ;
 scalar_t__ trace_kprobe_is_return (struct trace_kprobe*) ;
 int unregister_kprobe (TYPE_2__*) ;
 int unregister_kretprobe (TYPE_1__*) ;

__attribute__((used)) static void __unregister_trace_kprobe(struct trace_kprobe *tk)
{
 if (trace_kprobe_is_registered(tk)) {
  if (trace_kprobe_is_return(tk))
   unregister_kretprobe(&tk->rp);
  else
   unregister_kprobe(&tk->rp.kp);

  INIT_HLIST_NODE(&tk->rp.kp.hlist);
  INIT_LIST_HEAD(&tk->rp.kp.list);
  if (tk->rp.kp.symbol_name)
   tk->rp.kp.addr = ((void*)0);
 }
}
