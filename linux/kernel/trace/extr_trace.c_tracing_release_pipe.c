
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_iterator {int mutex; int started; TYPE_2__* trace; } ;
struct trace_array {TYPE_1__* current_trace; } ;
struct inode {struct trace_array* i_private; } ;
struct file {struct trace_iterator* private_data; } ;
struct TYPE_4__ {int (* pipe_close ) (struct trace_iterator*) ;} ;
struct TYPE_3__ {int ref; } ;


 int free_cpumask_var (int ) ;
 int kfree (struct trace_iterator*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct trace_iterator*) ;
 int trace_array_put (struct trace_array*) ;
 int trace_types_lock ;

__attribute__((used)) static int tracing_release_pipe(struct inode *inode, struct file *file)
{
 struct trace_iterator *iter = file->private_data;
 struct trace_array *tr = inode->i_private;

 mutex_lock(&trace_types_lock);

 tr->current_trace->ref--;

 if (iter->trace->pipe_close)
  iter->trace->pipe_close(iter);

 mutex_unlock(&trace_types_lock);

 free_cpumask_var(iter->started);
 mutex_destroy(&iter->mutex);
 kfree(iter);

 trace_array_put(tr);

 return 0;
}
