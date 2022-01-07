
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int reg_lock; } ;


 int SNDRV_GF1_GB_DRAM_DMA_CONTROL ;
 int snd_gf1_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_write8 (struct snd_gus_card*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_gf1_dma_ack(struct snd_gus_card * gus)
{
 unsigned long flags;

 spin_lock_irqsave(&gus->reg_lock, flags);
 snd_gf1_write8(gus, SNDRV_GF1_GB_DRAM_DMA_CONTROL, 0x00);
 snd_gf1_look8(gus, SNDRV_GF1_GB_DRAM_DMA_CONTROL);
 spin_unlock_irqrestore(&gus->reg_lock, flags);
}
