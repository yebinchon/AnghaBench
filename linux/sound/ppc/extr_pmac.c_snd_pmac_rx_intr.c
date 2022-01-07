
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pmac {int capture; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int snd_pmac_pcm_update (struct snd_pmac*,int *) ;

__attribute__((used)) static irqreturn_t
snd_pmac_rx_intr(int irq, void *devid)
{
 struct snd_pmac *chip = devid;
 snd_pmac_pcm_update(chip, &chip->capture);
 return IRQ_HANDLED;
}
