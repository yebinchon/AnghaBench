
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int err_log; } ;
struct seq_file {struct trace_array* private; } ;
typedef int loff_t ;


 int mutex_lock (int *) ;
 void* seq_list_start (int *,int ) ;
 int tracing_err_log_lock ;

__attribute__((used)) static void *tracing_err_log_seq_start(struct seq_file *m, loff_t *pos)
{
 struct trace_array *tr = m->private;

 mutex_lock(&tracing_err_log_lock);

 return seq_list_start(&tr->err_log, *pos);
}
