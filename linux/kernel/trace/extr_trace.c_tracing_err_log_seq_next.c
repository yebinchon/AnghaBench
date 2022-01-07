
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int err_log; } ;
struct seq_file {struct trace_array* private; } ;
typedef int loff_t ;


 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *tracing_err_log_seq_next(struct seq_file *m, void *v, loff_t *pos)
{
 struct trace_array *tr = m->private;

 return seq_list_next(v, &tr->err_log, pos);
}
