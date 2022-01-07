
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct irq_desc* private; } ;
struct irq_desc {int lock; int wake_depth; int depth; int istate; int status_use_accessors; int dev_name; int handle_irq; } ;
struct irq_data {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int irq_data_get_node (struct irq_data*) ;
 int irq_debug_show_bits (struct seq_file*,int ,int ,int ,int ) ;
 int irq_debug_show_data (struct seq_file*,struct irq_data*,int ) ;
 int irq_debug_show_masks (struct seq_file*,struct irq_desc*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int irqd_get (struct irq_data*) ;
 int irqdata_states ;
 int irqdesc_istates ;
 int irqdesc_states ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int irq_debug_show(struct seq_file *m, void *p)
{
 struct irq_desc *desc = m->private;
 struct irq_data *data;

 raw_spin_lock_irq(&desc->lock);
 data = irq_desc_get_irq_data(desc);
 seq_printf(m, "handler:  %ps\n", desc->handle_irq);
 seq_printf(m, "device:   %s\n", desc->dev_name);
 seq_printf(m, "status:   0x%08x\n", desc->status_use_accessors);
 irq_debug_show_bits(m, 0, desc->status_use_accessors, irqdesc_states,
       ARRAY_SIZE(irqdesc_states));
 seq_printf(m, "istate:   0x%08x\n", desc->istate);
 irq_debug_show_bits(m, 0, desc->istate, irqdesc_istates,
       ARRAY_SIZE(irqdesc_istates));
 seq_printf(m, "ddepth:   %u\n", desc->depth);
 seq_printf(m, "wdepth:   %u\n", desc->wake_depth);
 seq_printf(m, "dstate:   0x%08x\n", irqd_get(data));
 irq_debug_show_bits(m, 0, irqd_get(data), irqdata_states,
       ARRAY_SIZE(irqdata_states));
 seq_printf(m, "node:     %d\n", irq_data_get_node(data));
 irq_debug_show_masks(m, desc);
 irq_debug_show_data(m, data, 0);
 raw_spin_unlock_irq(&desc->lock);
 return 0;
}
