
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msi_msg {int dummy; } ;
struct irq_data {TYPE_1__* chip; struct irq_data* parent_data; } ;
struct TYPE_2__ {int (* irq_compose_msi_msg ) (struct irq_data*,struct msi_msg*) ;} ;


 int ENOSYS ;
 int stub1 (struct irq_data*,struct msi_msg*) ;

int irq_chip_compose_msi_msg(struct irq_data *data, struct msi_msg *msg)
{
 struct irq_data *pos = ((void*)0);




  if (data->chip && data->chip->irq_compose_msi_msg)
   pos = data;
 if (!pos)
  return -ENOSYS;

 pos->chip->irq_compose_msi_msg(pos, msg);

 return 0;
}
