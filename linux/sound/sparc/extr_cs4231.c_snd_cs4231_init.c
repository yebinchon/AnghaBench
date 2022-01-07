
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {int* image; int lock; } ;


 size_t CS4231_ALT_FEATURE_1 ;
 size_t CS4231_ALT_FEATURE_2 ;
 int CS4231_AUTOCALIB ;
 int CS4231_CALIB_MODE ;
 size_t CS4231_IFACE_CTRL ;
 int CS4231_PLAYBACK_ENABLE ;
 int CS4231_PLAYBACK_PIO ;
 size_t CS4231_PLAYBK_FORMAT ;
 int CS4231_RECORD_ENABLE ;
 int CS4231_RECORD_PIO ;
 size_t CS4231_REC_FORMAT ;
 int snd_cs4231_mce_down (struct snd_cs4231*) ;
 int snd_cs4231_mce_up (struct snd_cs4231*) ;
 int snd_cs4231_out (struct snd_cs4231*,size_t,int) ;
 int snd_printdd (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs4231_init(struct snd_cs4231 *chip)
{
 unsigned long flags;

 snd_cs4231_mce_down(chip);




 snd_cs4231_mce_up(chip);
 spin_lock_irqsave(&chip->lock, flags);
 chip->image[CS4231_IFACE_CTRL] &= ~(CS4231_PLAYBACK_ENABLE |
         CS4231_PLAYBACK_PIO |
         CS4231_RECORD_ENABLE |
         CS4231_RECORD_PIO |
         CS4231_CALIB_MODE);
 chip->image[CS4231_IFACE_CTRL] |= CS4231_AUTOCALIB;
 snd_cs4231_out(chip, CS4231_IFACE_CTRL, chip->image[CS4231_IFACE_CTRL]);
 spin_unlock_irqrestore(&chip->lock, flags);
 snd_cs4231_mce_down(chip);





 snd_cs4231_mce_up(chip);
 spin_lock_irqsave(&chip->lock, flags);
 snd_cs4231_out(chip, CS4231_ALT_FEATURE_1,
   chip->image[CS4231_ALT_FEATURE_1]);
 spin_unlock_irqrestore(&chip->lock, flags);
 snd_cs4231_mce_down(chip);






 spin_lock_irqsave(&chip->lock, flags);
 snd_cs4231_out(chip, CS4231_ALT_FEATURE_2,
   chip->image[CS4231_ALT_FEATURE_2]);
 spin_unlock_irqrestore(&chip->lock, flags);

 snd_cs4231_mce_up(chip);
 spin_lock_irqsave(&chip->lock, flags);
 snd_cs4231_out(chip, CS4231_PLAYBK_FORMAT,
   chip->image[CS4231_PLAYBK_FORMAT]);
 spin_unlock_irqrestore(&chip->lock, flags);
 snd_cs4231_mce_down(chip);





 snd_cs4231_mce_up(chip);
 spin_lock_irqsave(&chip->lock, flags);
 snd_cs4231_out(chip, CS4231_REC_FORMAT, chip->image[CS4231_REC_FORMAT]);
 spin_unlock_irqrestore(&chip->lock, flags);
 snd_cs4231_mce_down(chip);




}
