
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int dummy; } ;
struct msi_desc {int dummy; } ;


 int __get_cached_msi_msg (struct msi_desc*,struct msi_msg*) ;
 struct msi_desc* irq_get_msi_desc (unsigned int) ;

void get_cached_msi_msg(unsigned int irq, struct msi_msg *msg)
{
 struct msi_desc *entry = irq_get_msi_desc(irq);

 __get_cached_msi_msg(entry, msg);
}
