
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct atiixp {int reg_lock; scalar_t__ spdif_over_aclink; } ;
struct TYPE_2__ {scalar_t__ format; } ;


 int ATI_REG_CMD_INTERLEAVE_OUT ;
 int ATI_REG_CMD_INTERLEAVE_SPDF ;
 int ATI_REG_CMD_SPDF_CONFIG_01 ;
 int ATI_REG_CMD_SPDF_CONFIG_MASK ;
 unsigned int ATI_REG_OUT_DMA_SLOT_BIT (int) ;
 unsigned int ATI_REG_OUT_DMA_SLOT_MASK ;
 int ATI_REG_OUT_DMA_THRESHOLD_SHIFT ;
 int CMD ;
 int OUT_DMA_SLOT ;
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ;
 unsigned int atiixp_read (struct atiixp*,int ) ;
 int atiixp_update (struct atiixp*,int ,int ,int ) ;
 int atiixp_write (struct atiixp*,int ,unsigned int) ;
 struct atiixp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_atiixp_spdif_prepare(struct snd_pcm_substream *substream)
{
 struct atiixp *chip = snd_pcm_substream_chip(substream);

 spin_lock_irq(&chip->reg_lock);
 if (chip->spdif_over_aclink) {
  unsigned int data;

  atiixp_update(chip, CMD, ATI_REG_CMD_SPDF_CONFIG_MASK,
         ATI_REG_CMD_SPDF_CONFIG_01);
  data = atiixp_read(chip, OUT_DMA_SLOT) & ~ATI_REG_OUT_DMA_SLOT_MASK;
  data |= ATI_REG_OUT_DMA_SLOT_BIT(10) |
   ATI_REG_OUT_DMA_SLOT_BIT(11);
  data |= 0x04 << ATI_REG_OUT_DMA_THRESHOLD_SHIFT;
  atiixp_write(chip, OUT_DMA_SLOT, data);
  atiixp_update(chip, CMD, ATI_REG_CMD_INTERLEAVE_OUT,
         substream->runtime->format == SNDRV_PCM_FORMAT_S16_LE ?
         ATI_REG_CMD_INTERLEAVE_OUT : 0);
 } else {
  atiixp_update(chip, CMD, ATI_REG_CMD_SPDF_CONFIG_MASK, 0);
  atiixp_update(chip, CMD, ATI_REG_CMD_INTERLEAVE_SPDF, 0);
 }
 spin_unlock_irq(&chip->reg_lock);
 return 0;
}
