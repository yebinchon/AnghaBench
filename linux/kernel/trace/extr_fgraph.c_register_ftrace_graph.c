
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fgraph_ops {int entryfunc; int retfunc; } ;


 int EBUSY ;
 int FTRACE_START_FUNC_RET ;
 int __ftrace_graph_entry ;
 scalar_t__ ftrace_graph_active ;
 int ftrace_graph_entry ;
 int ftrace_graph_entry_test ;
 int ftrace_graph_return ;
 int ftrace_lock ;
 int ftrace_startup (int *,int ) ;
 int ftrace_suspend_notifier ;
 int graph_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int register_pm_notifier (int *) ;
 int start_graph_tracing () ;
 int update_function_graph_func () ;

int register_ftrace_graph(struct fgraph_ops *gops)
{
 int ret = 0;

 mutex_lock(&ftrace_lock);


 if (ftrace_graph_active) {
  ret = -EBUSY;
  goto out;
 }

 register_pm_notifier(&ftrace_suspend_notifier);

 ftrace_graph_active++;
 ret = start_graph_tracing();
 if (ret) {
  ftrace_graph_active--;
  goto out;
 }

 ftrace_graph_return = gops->retfunc;







 __ftrace_graph_entry = gops->entryfunc;
 ftrace_graph_entry = ftrace_graph_entry_test;
 update_function_graph_func();

 ret = ftrace_startup(&graph_ops, FTRACE_START_FUNC_RET);
out:
 mutex_unlock(&ftrace_lock);
 return ret;
}
