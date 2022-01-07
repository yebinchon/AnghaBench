
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {int irq; } ;


 int ack_bad_irq (int ) ;
 struct irq_desc* irq_data_to_desc (struct irq_data*) ;
 int print_irq_desc (int ,struct irq_desc*) ;

__attribute__((used)) static void ack_bad(struct irq_data *data)
{
 struct irq_desc *desc = irq_data_to_desc(data);

 print_irq_desc(data->irq, desc);
 ack_bad_irq(data->irq);
}
