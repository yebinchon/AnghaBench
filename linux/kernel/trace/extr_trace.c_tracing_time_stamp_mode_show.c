
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buffer; } ;
struct trace_array {TYPE_1__ trace_buffer; } ;
struct seq_file {struct trace_array* private; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ ring_buffer_time_stamp_abs (int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int trace_types_lock ;

__attribute__((used)) static int tracing_time_stamp_mode_show(struct seq_file *m, void *v)
{
 struct trace_array *tr = m->private;

 mutex_lock(&trace_types_lock);

 if (ring_buffer_time_stamp_abs(tr->trace_buffer.buffer))
  seq_puts(m, "delta [absolute]\n");
 else
  seq_puts(m, "[delta] absolute\n");

 mutex_unlock(&trace_types_lock);

 return 0;
}
