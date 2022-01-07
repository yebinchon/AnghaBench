
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct irq_data {struct irq_data* parent_data; TYPE_2__* domain; int hwirq; } ;
struct TYPE_4__ {char* name; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* debug_show ) (struct seq_file*,int *,struct irq_data*,int) ;} ;


 int irq_debug_show_chip (struct seq_file*,struct irq_data*,int) ;
 int seq_printf (struct seq_file*,char*,int,char*,...) ;
 int stub1 (struct seq_file*,int *,struct irq_data*,int) ;

__attribute__((used)) static void
irq_debug_show_data(struct seq_file *m, struct irq_data *data, int ind)
{
 seq_printf(m, "%*sdomain:  %s\n", ind, "",
     data->domain ? data->domain->name : "");
 seq_printf(m, "%*shwirq:   0x%lx\n", ind + 1, "", data->hwirq);
 irq_debug_show_chip(m, data, ind + 1);
 if (data->domain && data->domain->ops && data->domain->ops->debug_show)
  data->domain->ops->debug_show(m, ((void*)0), data, ind + 1);






}
