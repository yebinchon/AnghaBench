
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {struct fgraph_data* private; } ;
struct fgraph_data {int cpu_data; } ;


 int free_percpu (int ) ;
 int kfree (struct fgraph_data*) ;

void graph_trace_close(struct trace_iterator *iter)
{
 struct fgraph_data *data = iter->private;

 if (data) {
  free_percpu(data->cpu_data);
  kfree(data);
 }
}
