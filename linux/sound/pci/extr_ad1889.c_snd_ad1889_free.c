
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1889 {scalar_t__ irq; int pci; int iobase; int lock; } ;


 int AD_CHAN_ADC ;
 int AD_CHAN_WAV ;
 int AD_DMA_DISR ;
 int AD_DMA_DISR_PMAI ;
 int AD_DMA_DISR_PTAI ;
 int ad1889_channel_reset (struct snd_ad1889*,int) ;
 int ad1889_mute (struct snd_ad1889*) ;
 int ad1889_readl (struct snd_ad1889*,int ) ;
 int ad1889_writel (struct snd_ad1889*,int ,int) ;
 int free_irq (scalar_t__,struct snd_ad1889*) ;
 int iounmap (int ) ;
 int kfree (struct snd_ad1889*) ;
 int pci_disable_device (int ) ;
 int pci_release_regions (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_ad1889_free(struct snd_ad1889 *chip)
{
 if (chip->irq < 0)
  goto skip_hw;

 spin_lock_irq(&chip->lock);

 ad1889_mute(chip);


 ad1889_channel_reset(chip, AD_CHAN_WAV | AD_CHAN_ADC);


 ad1889_writel(chip, AD_DMA_DISR, AD_DMA_DISR_PTAI | AD_DMA_DISR_PMAI);
 ad1889_readl(chip, AD_DMA_DISR);

 spin_unlock_irq(&chip->lock);

 if (chip->irq >= 0)
  free_irq(chip->irq, chip);

skip_hw:
 iounmap(chip->iobase);
 pci_release_regions(chip->pci);
 pci_disable_device(chip->pci);
 kfree(chip);
 return 0;
}
