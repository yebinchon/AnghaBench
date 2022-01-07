
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_iterator {TYPE_1__* trace; int mutex; int cpu_file; int * trace_buffer; struct trace_array* tr; int iter_flags; int started; int seq; } ;
struct trace_array {int trace_flags; size_t clock_id; TYPE_1__* current_trace; int trace_buffer; } ;
struct inode {struct trace_array* i_private; } ;
struct file {struct trace_iterator* private_data; } ;
struct TYPE_4__ {scalar_t__ in_ns; } ;
struct TYPE_3__ {int ref; int (* pipe_open ) (struct trace_iterator*) ;} ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TRACE_FILE_LAT_FMT ;
 int TRACE_FILE_TIME_IN_NS ;
 int TRACE_ITER_LATENCY_FMT ;
 int __trace_array_put (struct trace_array*) ;
 int alloc_cpumask_var (int *,int ) ;
 int cpumask_setall (int ) ;
 int kfree (struct trace_iterator*) ;
 struct trace_iterator* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int stub1 (struct trace_iterator*) ;
 TYPE_2__* trace_clocks ;
 int trace_seq_init (int *) ;
 int trace_types_lock ;
 int tracing_check_open_get_tr (struct trace_array*) ;
 int tracing_get_cpu (struct inode*) ;

__attribute__((used)) static int tracing_open_pipe(struct inode *inode, struct file *filp)
{
 struct trace_array *tr = inode->i_private;
 struct trace_iterator *iter;
 int ret;

 ret = tracing_check_open_get_tr(tr);
 if (ret)
  return ret;

 mutex_lock(&trace_types_lock);


 iter = kzalloc(sizeof(*iter), GFP_KERNEL);
 if (!iter) {
  ret = -ENOMEM;
  __trace_array_put(tr);
  goto out;
 }

 trace_seq_init(&iter->seq);
 iter->trace = tr->current_trace;

 if (!alloc_cpumask_var(&iter->started, GFP_KERNEL)) {
  ret = -ENOMEM;
  goto fail;
 }


 cpumask_setall(iter->started);

 if (tr->trace_flags & TRACE_ITER_LATENCY_FMT)
  iter->iter_flags |= TRACE_FILE_LAT_FMT;


 if (trace_clocks[tr->clock_id].in_ns)
  iter->iter_flags |= TRACE_FILE_TIME_IN_NS;

 iter->tr = tr;
 iter->trace_buffer = &tr->trace_buffer;
 iter->cpu_file = tracing_get_cpu(inode);
 mutex_init(&iter->mutex);
 filp->private_data = iter;

 if (iter->trace->pipe_open)
  iter->trace->pipe_open(iter);

 nonseekable_open(inode, filp);

 tr->current_trace->ref++;
out:
 mutex_unlock(&trace_types_lock);
 return ret;

fail:
 kfree(iter);
 __trace_array_put(tr);
 mutex_unlock(&trace_types_lock);
 return ret;
}
