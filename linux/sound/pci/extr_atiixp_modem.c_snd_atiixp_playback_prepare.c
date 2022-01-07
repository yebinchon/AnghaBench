
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct atiixp_modem {int reg_lock; } ;


 unsigned int ATI_REG_MODEM_OUT1_DMA_THRESHOLD_MASK ;
 int ATI_REG_MODEM_OUT1_DMA_THRESHOLD_SHIFT ;
 int MODEM_OUT_FIFO ;
 unsigned int atiixp_read (struct atiixp_modem*,int ) ;
 int atiixp_write (struct atiixp_modem*,int ,unsigned int) ;
 struct atiixp_modem* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_atiixp_playback_prepare(struct snd_pcm_substream *substream)
{
 struct atiixp_modem *chip = snd_pcm_substream_chip(substream);
 unsigned int data;

 spin_lock_irq(&chip->reg_lock);

 data = atiixp_read(chip, MODEM_OUT_FIFO);
 data &= ~ATI_REG_MODEM_OUT1_DMA_THRESHOLD_MASK;
 data |= 0x04 << ATI_REG_MODEM_OUT1_DMA_THRESHOLD_SHIFT;
 atiixp_write(chip, MODEM_OUT_FIFO, data);
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
