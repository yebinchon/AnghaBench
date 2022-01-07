
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_array {TYPE_2__* current_trace; int trace_buffer; } ;
struct inode {struct trace_array* i_private; } ;
struct TYPE_3__ {int * trace_buffer; TYPE_2__* trace; int cpu_file; struct trace_array* tr; } ;
struct ftrace_buffer_info {unsigned int read; int * spare; TYPE_1__ iter; } ;
struct file {struct ftrace_buffer_info* private_data; } ;
struct TYPE_4__ {int ref; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct ftrace_buffer_info* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int trace_array_put (struct trace_array*) ;
 int trace_types_lock ;
 int tracing_check_open_get_tr (struct trace_array*) ;
 int tracing_get_cpu (struct inode*) ;

__attribute__((used)) static int tracing_buffers_open(struct inode *inode, struct file *filp)
{
 struct trace_array *tr = inode->i_private;
 struct ftrace_buffer_info *info;
 int ret;

 ret = tracing_check_open_get_tr(tr);
 if (ret)
  return ret;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info) {
  trace_array_put(tr);
  return -ENOMEM;
 }

 mutex_lock(&trace_types_lock);

 info->iter.tr = tr;
 info->iter.cpu_file = tracing_get_cpu(inode);
 info->iter.trace = tr->current_trace;
 info->iter.trace_buffer = &tr->trace_buffer;
 info->spare = ((void*)0);

 info->read = (unsigned int)-1;

 filp->private_data = info;

 tr->current_trace->ref++;

 mutex_unlock(&trace_types_lock);

 ret = nonseekable_open(inode, filp);
 if (ret < 0)
  trace_array_put(tr);

 return ret;
}
