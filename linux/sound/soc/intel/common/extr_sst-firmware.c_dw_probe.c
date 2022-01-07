
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct dw_dma_chip {int irq; struct device* dev; int regs; } ;
struct device {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 struct dw_dma_chip* ERR_CAST (int ) ;
 struct dw_dma_chip* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct dw_dma_chip* devm_kzalloc (struct device*,int,int ) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int dw_dma_probe (struct dw_dma_chip*) ;

__attribute__((used)) static struct dw_dma_chip *dw_probe(struct device *dev, struct resource *mem,
 int irq)
{
 struct dw_dma_chip *chip;
 int err;

 chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
 if (!chip)
  return ERR_PTR(-ENOMEM);

 chip->irq = irq;
 chip->regs = devm_ioremap_resource(dev, mem);
 if (IS_ERR(chip->regs))
  return ERR_CAST(chip->regs);

 err = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(31));
 if (err)
  return ERR_PTR(err);

 chip->dev = dev;

 err = dw_dma_probe(chip);
 if (err)
  return ERR_PTR(err);

 return chip;
}
