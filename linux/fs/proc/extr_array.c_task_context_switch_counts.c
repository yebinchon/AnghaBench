
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int nivcsw; int nvcsw; } ;
struct seq_file {int dummy; } ;


 int seq_put_decimal_ull (struct seq_file*,char*,int ) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static inline void task_context_switch_counts(struct seq_file *m,
      struct task_struct *p)
{
 seq_put_decimal_ull(m, "voluntary_ctxt_switches:\t", p->nvcsw);
 seq_put_decimal_ull(m, "\nnonvoluntary_ctxt_switches:\t", p->nivcsw);
 seq_putc(m, '\n');
}
