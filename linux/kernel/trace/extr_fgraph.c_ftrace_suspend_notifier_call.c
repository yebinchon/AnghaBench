
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;


 int pause_graph_tracing () ;
 int unpause_graph_tracing () ;

__attribute__((used)) static int
ftrace_suspend_notifier_call(struct notifier_block *bl, unsigned long state,
       void *unused)
{
 switch (state) {
 case 129:
  pause_graph_tracing();
  break;

 case 128:
  unpause_graph_tracing();
  break;
 }
 return NOTIFY_DONE;
}
