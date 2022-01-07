
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_work {int dummy; } ;


 int trace_printk (char*,...) ;
 int trace_printk_test_global_str_fmt ;
 int trace_printk_test_global_str_irq ;

__attribute__((used)) static void trace_printk_irq_work(struct irq_work *work)
{
 trace_printk("(irq) This is a static string that will use trace_bputs\n");
 trace_printk(trace_printk_test_global_str_irq);

 trace_printk("(irq) This is a %s that will use trace_bprintk()\n",
       "static string");

 trace_printk(trace_printk_test_global_str_fmt,
       "(irq) ", "dynamic string");
}
