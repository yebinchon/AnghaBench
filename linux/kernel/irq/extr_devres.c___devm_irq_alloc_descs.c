
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct irq_desc_devres {int from; unsigned int cnt; } ;
struct irq_affinity_desc {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __irq_alloc_descs (int,unsigned int,unsigned int,int,struct module*,struct irq_affinity_desc const*) ;
 int devm_irq_desc_release ;
 int devres_add (struct device*,struct irq_desc_devres*) ;
 struct irq_desc_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct irq_desc_devres*) ;

int __devm_irq_alloc_descs(struct device *dev, int irq, unsigned int from,
      unsigned int cnt, int node, struct module *owner,
      const struct irq_affinity_desc *affinity)
{
 struct irq_desc_devres *dr;
 int base;

 dr = devres_alloc(devm_irq_desc_release, sizeof(*dr), GFP_KERNEL);
 if (!dr)
  return -ENOMEM;

 base = __irq_alloc_descs(irq, from, cnt, node, owner, affinity);
 if (base < 0) {
  devres_free(dr);
  return base;
 }

 dr->from = base;
 dr->cnt = cnt;
 devres_add(dev, dr);

 return base;
}
