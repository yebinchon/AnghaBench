
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyn_event {int * ops; } ;


 int trace_kprobe_ops ;

__attribute__((used)) static bool is_trace_kprobe(struct dyn_event *ev)
{
 return ev->ops == &trace_kprobe_ops;
}
