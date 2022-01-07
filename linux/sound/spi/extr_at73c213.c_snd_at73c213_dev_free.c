
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_device {struct snd_at73c213* device_data; } ;
struct snd_at73c213 {int irq; TYPE_1__* ssc; } ;
struct TYPE_2__ {int regs; } ;


 int CR ;
 int CR_TXDIS ;
 int SSC_BIT (int ) ;
 int free_irq (int,struct snd_at73c213*) ;
 int ssc_writel (int ,int ,int ) ;

__attribute__((used)) static int snd_at73c213_dev_free(struct snd_device *device)
{
 struct snd_at73c213 *chip = device->device_data;

 ssc_writel(chip->ssc->regs, CR, SSC_BIT(CR_TXDIS));
 if (chip->irq >= 0) {
  free_irq(chip->irq, chip);
  chip->irq = -1;
 }

 return 0;
}
