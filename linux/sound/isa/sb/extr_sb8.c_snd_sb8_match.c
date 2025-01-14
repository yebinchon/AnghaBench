
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ SNDRV_AUTO_DMA ;
 scalar_t__ SNDRV_AUTO_IRQ ;
 int dev_err (struct device*,char*) ;
 scalar_t__* dma8 ;
 int * enable ;
 scalar_t__* irq ;

__attribute__((used)) static int snd_sb8_match(struct device *pdev, unsigned int dev)
{
 if (!enable[dev])
  return 0;
 if (irq[dev] == SNDRV_AUTO_IRQ) {
  dev_err(pdev, "please specify irq\n");
  return 0;
 }
 if (dma8[dev] == SNDRV_AUTO_DMA) {
  dev_err(pdev, "please specify dma8\n");
  return 0;
 }
 return 1;
}
