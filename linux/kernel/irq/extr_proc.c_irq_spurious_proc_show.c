
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
struct irq_desc {int last_unhandled; int irqs_unhandled; int irq_count; } ;


 struct irq_desc* irq_to_desc (long) ;
 int jiffies_to_msecs (int ) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static int irq_spurious_proc_show(struct seq_file *m, void *v)
{
 struct irq_desc *desc = irq_to_desc((long) m->private);

 seq_printf(m, "count %u\n" "unhandled %u\n" "last_unhandled %u ms\n",
     desc->irq_count, desc->irqs_unhandled,
     jiffies_to_msecs(desc->last_unhandled));
 return 0;
}
