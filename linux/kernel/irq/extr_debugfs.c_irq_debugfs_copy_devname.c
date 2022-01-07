
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dev_name; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 char* dev_name (struct device*) ;
 struct irq_desc* irq_to_desc (int) ;
 int kstrdup (char const*,int ) ;

void irq_debugfs_copy_devname(int irq, struct device *dev)
{
 struct irq_desc *desc = irq_to_desc(irq);
 const char *name = dev_name(dev);

 if (name)
  desc->dev_name = kstrdup(name, GFP_KERNEL);
}
