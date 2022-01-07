
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ trace_func_graph_ret_t ;
struct fgraph_ops {int dummy; } ;


 int FTRACE_STOP_FUNC_RET ;
 void* __ftrace_graph_entry ;
 int ftrace_graph_active ;
 void* ftrace_graph_entry ;
 void* ftrace_graph_entry_stub ;
 int ftrace_graph_probe_sched_switch ;
 scalar_t__ ftrace_graph_return ;
 int ftrace_lock ;
 int ftrace_shutdown (int *,int ) ;
 scalar_t__ ftrace_stub ;
 int ftrace_suspend_notifier ;
 int graph_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int unregister_pm_notifier (int *) ;
 int unregister_trace_sched_switch (int ,int *) ;

void unregister_ftrace_graph(struct fgraph_ops *gops)
{
 mutex_lock(&ftrace_lock);

 if (unlikely(!ftrace_graph_active))
  goto out;

 ftrace_graph_active--;
 ftrace_graph_return = (trace_func_graph_ret_t)ftrace_stub;
 ftrace_graph_entry = ftrace_graph_entry_stub;
 __ftrace_graph_entry = ftrace_graph_entry_stub;
 ftrace_shutdown(&graph_ops, FTRACE_STOP_FUNC_RET);
 unregister_pm_notifier(&ftrace_suspend_notifier);
 unregister_trace_sched_switch(ftrace_graph_probe_sched_switch, ((void*)0));

 out:
 mutex_unlock(&ftrace_lock);
}
