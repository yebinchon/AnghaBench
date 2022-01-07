
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int lock; } ;


 int AD1816A_CAPTURE_CONFIG ;
 int AD1816A_CAPTURE_ENABLE ;
 int AD1816A_CAPTURE_NOT_EQUAL ;
 int AD1816A_CAPTURE_PIO ;
 int AD1816A_CHIP_CONFIG ;
 int AD1816A_DSP_CONFIG ;
 int AD1816A_INTERRUPT_ENABLE ;
 int AD1816A_INTERRUPT_STATUS ;
 int AD1816A_PLAYBACK_CONFIG ;
 int AD1816A_PLAYBACK_ENABLE ;
 int AD1816A_PLAYBACK_PIO ;
 int AD1816A_POWERDOWN_CTRL ;
 int AD1816A_WSS_ENABLE ;
 int snd_ad1816a_out (struct snd_ad1816a*,int ,int) ;
 int snd_ad1816a_out_mask (struct snd_ad1816a*,int ,int,int) ;
 int snd_ad1816a_write (struct snd_ad1816a*,int ,int) ;
 int snd_ad1816a_write_mask (struct snd_ad1816a*,int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_ad1816a_init(struct snd_ad1816a *chip)
{
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);

 snd_ad1816a_out(chip, AD1816A_INTERRUPT_STATUS, 0x00);
 snd_ad1816a_out_mask(chip, AD1816A_PLAYBACK_CONFIG,
  AD1816A_PLAYBACK_ENABLE | AD1816A_PLAYBACK_PIO, 0x00);
 snd_ad1816a_out_mask(chip, AD1816A_CAPTURE_CONFIG,
  AD1816A_CAPTURE_ENABLE | AD1816A_CAPTURE_PIO, 0x00);
 snd_ad1816a_write(chip, AD1816A_INTERRUPT_ENABLE, 0x0000);
 snd_ad1816a_write_mask(chip, AD1816A_CHIP_CONFIG,
  AD1816A_CAPTURE_NOT_EQUAL | AD1816A_WSS_ENABLE, 0xffff);
 snd_ad1816a_write(chip, AD1816A_DSP_CONFIG, 0x0000);
 snd_ad1816a_write(chip, AD1816A_POWERDOWN_CTRL, 0x0000);

 spin_unlock_irqrestore(&chip->lock, flags);
}
