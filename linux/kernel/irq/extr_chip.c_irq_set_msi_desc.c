
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_desc {int dummy; } ;


 int irq_set_msi_desc_off (unsigned int,int ,struct msi_desc*) ;

int irq_set_msi_desc(unsigned int irq, struct msi_desc *entry)
{
 return irq_set_msi_desc_off(irq, 0, entry);
}
