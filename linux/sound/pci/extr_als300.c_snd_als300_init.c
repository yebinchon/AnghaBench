
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_als300 {int revision; int reg_lock; int port; } ;


 int DRAM_MODE_2 ;
 int DRAM_WRITE_CONTROL ;
 int IRQ_ENABLE ;
 int MISC_CONTROL ;
 int MMUTE_NORMAL ;
 int MUS_VOC_VOL ;
 int PLAYBACK_CONTROL ;
 int TRANSFER_START ;
 int VMUTE_NORMAL ;
 int WRITE_TRANS_START ;
 int snd_als300_gcr_read (int ,int ) ;
 int snd_als300_gcr_write (int ,int ,int) ;
 int snd_als300_set_irq_flag (struct snd_als300*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_als300_init(struct snd_als300 *chip)
{
 unsigned long flags;
 u32 tmp;

 spin_lock_irqsave(&chip->reg_lock, flags);
 chip->revision = (snd_als300_gcr_read(chip->port, MISC_CONTROL) >> 16)
        & 0x0000000F;

 tmp = snd_als300_gcr_read(chip->port, DRAM_WRITE_CONTROL);
 snd_als300_gcr_write(chip->port, DRAM_WRITE_CONTROL,
      (tmp | DRAM_MODE_2)
      & ~WRITE_TRANS_START);


 snd_als300_set_irq_flag(chip, IRQ_ENABLE);



 tmp = snd_als300_gcr_read(chip->port, MISC_CONTROL);
 snd_als300_gcr_write(chip->port, MISC_CONTROL,
   tmp | VMUTE_NORMAL | MMUTE_NORMAL);


 snd_als300_gcr_write(chip->port, MUS_VOC_VOL, 0);


 tmp = snd_als300_gcr_read(chip->port, PLAYBACK_CONTROL);
 snd_als300_gcr_write(chip->port, PLAYBACK_CONTROL,
   tmp & ~TRANSFER_START);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
