
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_sb {int reg_lock; int mixer_lock; } ;


 int ALS4K_CR0_MX80_81_REG_WRITE_ENABLE ;
 int ALS4K_CR0_SB_CONFIG ;
 int ALS4K_GCR8C_IRQ_MASK_CTRL_ENABLE ;
 int ALS4K_GCR8C_MISC_CTRL ;
 int ALS4K_GCR91_DMA0_ADDR ;
 int ALS4K_GCR96_DMA3_MODE_COUNT ;
 int ALS4K_GCR99_DMA_EMULATION_CTRL ;
 int SB_DMASETUP_DMA0 ;
 int SB_DSP4_DMASETUP ;
 int snd_als4_cr_read (struct snd_sb*,int ) ;
 int snd_als4_cr_write (struct snd_sb*,int ,int) ;
 int snd_als4k_gcr_read (struct snd_sb*,int) ;
 int snd_als4k_gcr_write (struct snd_sb*,int,int) ;
 int snd_sbmixer_write (struct snd_sb*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void snd_als4000_configure(struct snd_sb *chip)
{
 u8 tmp;
 int i;


 spin_lock_irq(&chip->mixer_lock);
 tmp = snd_als4_cr_read(chip, ALS4K_CR0_SB_CONFIG);
 snd_als4_cr_write(chip, ALS4K_CR0_SB_CONFIG,
    tmp|ALS4K_CR0_MX80_81_REG_WRITE_ENABLE);


 snd_sbmixer_write(chip, SB_DSP4_DMASETUP, SB_DMASETUP_DMA0);
 snd_als4_cr_write(chip, ALS4K_CR0_SB_CONFIG,
     tmp & ~ALS4K_CR0_MX80_81_REG_WRITE_ENABLE);
 spin_unlock_irq(&chip->mixer_lock);

 spin_lock_irq(&chip->reg_lock);

 snd_als4k_gcr_write(chip, ALS4K_GCR8C_MISC_CTRL,
     ALS4K_GCR8C_IRQ_MASK_CTRL_ENABLE);


 for (i = ALS4K_GCR91_DMA0_ADDR; i <= ALS4K_GCR96_DMA3_MODE_COUNT; ++i)
  snd_als4k_gcr_write(chip, i, 0);

 snd_als4k_gcr_write(chip, ALS4K_GCR99_DMA_EMULATION_CTRL,
  (snd_als4k_gcr_read(chip, ALS4K_GCR99_DMA_EMULATION_CTRL) & ~0x07) | 0x04);
 spin_unlock_irq(&chip->reg_lock);
}
