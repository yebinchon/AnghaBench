
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {unsigned int mode; int lock; } ;


 int AD1816A_CAPTURE_IRQ_ENABLE ;
 int AD1816A_CAPTURE_IRQ_PENDING ;
 int AD1816A_INTERRUPT_ENABLE ;
 int AD1816A_INTERRUPT_STATUS ;

 unsigned int AD1816A_MODE_OPEN ;


 int AD1816A_PLAYBACK_IRQ_ENABLE ;
 int AD1816A_PLAYBACK_IRQ_PENDING ;
 int AD1816A_TIMER_IRQ_ENABLE ;
 int AD1816A_TIMER_IRQ_PENDING ;
 int snd_ad1816a_out_mask (struct snd_ad1816a*,int ,int ,int) ;
 int snd_ad1816a_write_mask (struct snd_ad1816a*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_ad1816a_close(struct snd_ad1816a *chip, unsigned int mode)
{
 unsigned long flags;

 spin_lock_irqsave(&chip->lock, flags);

 switch ((mode &= AD1816A_MODE_OPEN)) {
 case 129:
  snd_ad1816a_out_mask(chip, AD1816A_INTERRUPT_STATUS,
   AD1816A_PLAYBACK_IRQ_PENDING, 0x00);
  snd_ad1816a_write_mask(chip, AD1816A_INTERRUPT_ENABLE,
   AD1816A_PLAYBACK_IRQ_ENABLE, 0x0000);
  break;
 case 130:
  snd_ad1816a_out_mask(chip, AD1816A_INTERRUPT_STATUS,
   AD1816A_CAPTURE_IRQ_PENDING, 0x00);
  snd_ad1816a_write_mask(chip, AD1816A_INTERRUPT_ENABLE,
   AD1816A_CAPTURE_IRQ_ENABLE, 0x0000);
  break;
 case 128:
  snd_ad1816a_out_mask(chip, AD1816A_INTERRUPT_STATUS,
   AD1816A_TIMER_IRQ_PENDING, 0x00);
  snd_ad1816a_write_mask(chip, AD1816A_INTERRUPT_ENABLE,
   AD1816A_TIMER_IRQ_ENABLE, 0x0000);
 }
 if (!((chip->mode &= ~mode) & AD1816A_MODE_OPEN))
  chip->mode = 0;

 spin_unlock_irqrestore(&chip->lock, flags);
}
