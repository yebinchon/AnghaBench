
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_sb {int alt_port; int mpu_port; int mixer_lock; TYPE_1__* rmidi; scalar_t__ capture_substream; scalar_t__ playback_substream; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int private_data; } ;


 unsigned int ALS4K_IOB_0E_CR1E_IRQ ;
 int ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU ;
 unsigned int ALS4K_IOB_0E_MPU_IRQ ;
 unsigned int ALS4K_IOB_0E_SB_DMA_IRQ ;
 int ALS4K_IOB_16_ACK_FOR_CR1E ;
 unsigned int ALS4K_IRQTYPE_CR1E_DMA ;
 int IRQ_RETVAL (int) ;
 int SB_DSP4_IRQSTATUS ;
 unsigned int SB_IRQTYPE_16BIT ;
 unsigned int SB_IRQTYPE_8BIT ;
 unsigned int SB_IRQTYPE_MPUIN ;
 int inb (int ) ;
 unsigned int snd_als4k_iobase_readb (int ,int ) ;
 int snd_als4k_iobase_writeb (int ,int ,unsigned int) ;
 int snd_mpu401_uart_interrupt (int,int ) ;
 int snd_pcm_period_elapsed (scalar_t__) ;
 int snd_sb_ack_16bit (struct snd_sb*) ;
 int snd_sb_ack_8bit (struct snd_sb*) ;
 unsigned int snd_sbmixer_read (struct snd_sb*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_als4000_interrupt(int irq, void *dev_id)
{
 struct snd_sb *chip = dev_id;
 unsigned pci_irqstatus;
 unsigned sb_irqstatus;



 pci_irqstatus = snd_als4k_iobase_readb(chip->alt_port,
     ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU);
 if ((pci_irqstatus & ALS4K_IOB_0E_SB_DMA_IRQ)
  && (chip->playback_substream))
  snd_pcm_period_elapsed(chip->playback_substream);
 if ((pci_irqstatus & ALS4K_IOB_0E_CR1E_IRQ)
  && (chip->capture_substream))
  snd_pcm_period_elapsed(chip->capture_substream);
 if ((pci_irqstatus & ALS4K_IOB_0E_MPU_IRQ)
  && (chip->rmidi))
  snd_mpu401_uart_interrupt(irq, chip->rmidi->private_data);

 snd_als4k_iobase_writeb(chip->alt_port,
    ALS4K_IOB_0E_IRQTYPE_SB_CR1E_MPU, pci_irqstatus);

 spin_lock(&chip->mixer_lock);

 sb_irqstatus = snd_sbmixer_read(chip, SB_DSP4_IRQSTATUS);
 spin_unlock(&chip->mixer_lock);

 if (sb_irqstatus & SB_IRQTYPE_8BIT)
  snd_sb_ack_8bit(chip);
 if (sb_irqstatus & SB_IRQTYPE_16BIT)
  snd_sb_ack_16bit(chip);
 if (sb_irqstatus & SB_IRQTYPE_MPUIN)
  inb(chip->mpu_port);
 if (sb_irqstatus & ALS4K_IRQTYPE_CR1E_DMA)
  snd_als4k_iobase_readb(chip->alt_port,
     ALS4K_IOB_16_ACK_FOR_CR1E);





 return IRQ_RETVAL(
      (pci_irqstatus & (ALS4K_IOB_0E_SB_DMA_IRQ|ALS4K_IOB_0E_CR1E_IRQ|
    ALS4K_IOB_0E_MPU_IRQ))
   || (sb_irqstatus & (SB_IRQTYPE_8BIT|SB_IRQTYPE_16BIT|
    SB_IRQTYPE_MPUIN|ALS4K_IRQTYPE_CR1E_DMA))
 );
}
