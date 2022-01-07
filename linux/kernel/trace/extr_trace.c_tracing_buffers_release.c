
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct trace_iterator {TYPE_1__* trace_buffer; TYPE_3__* tr; } ;
struct inode {int dummy; } ;
struct ftrace_buffer_info {scalar_t__ spare; int spare_cpu; struct trace_iterator iter; } ;
struct file {struct ftrace_buffer_info* private_data; } ;
struct TYPE_6__ {TYPE_2__* current_trace; } ;
struct TYPE_5__ {int ref; } ;
struct TYPE_4__ {int buffer; } ;


 int __trace_array_put (TYPE_3__*) ;
 int kfree (struct ftrace_buffer_info*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ring_buffer_free_read_page (int ,int ,scalar_t__) ;
 int trace_types_lock ;

__attribute__((used)) static int tracing_buffers_release(struct inode *inode, struct file *file)
{
 struct ftrace_buffer_info *info = file->private_data;
 struct trace_iterator *iter = &info->iter;

 mutex_lock(&trace_types_lock);

 iter->tr->current_trace->ref--;

 __trace_array_put(iter->tr);

 if (info->spare)
  ring_buffer_free_read_page(iter->trace_buffer->buffer,
        info->spare_cpu, info->spare);
 kfree(info);

 mutex_unlock(&trace_types_lock);

 return 0;
}
