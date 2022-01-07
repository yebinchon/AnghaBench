
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int seq; } ;
struct seq_file {int dummy; } ;


 int __trace_seq_init (struct trace_seq*) ;
 int seq_buf_print_seq (struct seq_file*,int *) ;
 int trace_seq_init (struct trace_seq*) ;

int trace_print_seq(struct seq_file *m, struct trace_seq *s)
{
 int ret;

 __trace_seq_init(s);

 ret = seq_buf_print_seq(m, &s->seq);






 if (!ret)
  trace_seq_init(s);

 return ret;
}
