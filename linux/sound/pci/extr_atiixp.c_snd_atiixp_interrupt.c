
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp {unsigned int codec_not_ready_bits; int reg_lock; int * dmas; int spdif_over_aclink; } ;
typedef int irqreturn_t ;


 size_t ATI_DMA_CAPTURE ;
 size_t ATI_DMA_PLAYBACK ;
 size_t ATI_DMA_SPDIF ;
 unsigned int ATI_REG_ISR_IN_STATUS ;
 unsigned int ATI_REG_ISR_IN_XRUN ;
 unsigned int ATI_REG_ISR_OUT_STATUS ;
 unsigned int ATI_REG_ISR_OUT_XRUN ;
 unsigned int ATI_REG_ISR_SPDF_STATUS ;
 unsigned int ATI_REG_ISR_SPDF_XRUN ;
 unsigned int CODEC_CHECK_BITS ;
 int IER ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISR ;
 unsigned int atiixp_read (struct atiixp*,int ) ;
 int atiixp_update (struct atiixp*,int ,unsigned int,int ) ;
 int atiixp_write (struct atiixp*,int ,unsigned int) ;
 int snd_atiixp_update_dma (struct atiixp*,int *) ;
 int snd_atiixp_xrun_dma (struct atiixp*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t snd_atiixp_interrupt(int irq, void *dev_id)
{
 struct atiixp *chip = dev_id;
 unsigned int status;

 status = atiixp_read(chip, ISR);

 if (! status)
  return IRQ_NONE;


 if (status & ATI_REG_ISR_OUT_XRUN)
  snd_atiixp_xrun_dma(chip, &chip->dmas[ATI_DMA_PLAYBACK]);
 else if (status & ATI_REG_ISR_OUT_STATUS)
  snd_atiixp_update_dma(chip, &chip->dmas[ATI_DMA_PLAYBACK]);
 if (status & ATI_REG_ISR_IN_XRUN)
  snd_atiixp_xrun_dma(chip, &chip->dmas[ATI_DMA_CAPTURE]);
 else if (status & ATI_REG_ISR_IN_STATUS)
  snd_atiixp_update_dma(chip, &chip->dmas[ATI_DMA_CAPTURE]);
 if (! chip->spdif_over_aclink) {
  if (status & ATI_REG_ISR_SPDF_XRUN)
   snd_atiixp_xrun_dma(chip, &chip->dmas[ATI_DMA_SPDIF]);
  else if (status & ATI_REG_ISR_SPDF_STATUS)
   snd_atiixp_update_dma(chip, &chip->dmas[ATI_DMA_SPDIF]);
 }


 if (status & CODEC_CHECK_BITS) {
  unsigned int detected;
  detected = status & CODEC_CHECK_BITS;
  spin_lock(&chip->reg_lock);
  chip->codec_not_ready_bits |= detected;
  atiixp_update(chip, IER, detected, 0);
  spin_unlock(&chip->reg_lock);
 }


 atiixp_write(chip, ISR, status);

 return IRQ_HANDLED;
}
