
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;
struct snd_cs4231 {int* image; int mce_mutex; int lock; } ;


 size_t CS4231_IFACE_CTRL ;
 int CS4231_PLAYBACK_ENABLE ;
 size_t CS4231_PLAYBK_FORMAT ;
 size_t CS4231_REC_FORMAT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_cs4231_calibrate_mute (struct snd_cs4231*,int) ;
 int snd_cs4231_mce_down (struct snd_cs4231*) ;
 int snd_cs4231_mce_up (struct snd_cs4231*) ;
 int snd_cs4231_out (struct snd_cs4231*,size_t,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs4231_capture_format(struct snd_cs4231 *chip,
          struct snd_pcm_hw_params *params,
          unsigned char cdfr)
{
 unsigned long flags;

 mutex_lock(&chip->mce_mutex);
 snd_cs4231_calibrate_mute(chip, 1);

 snd_cs4231_mce_up(chip);

 spin_lock_irqsave(&chip->lock, flags);
 if (!(chip->image[CS4231_IFACE_CTRL] & CS4231_PLAYBACK_ENABLE)) {
  snd_cs4231_out(chip, CS4231_PLAYBK_FORMAT,
          ((chip->image[CS4231_PLAYBK_FORMAT]) & 0xf0) |
          (cdfr & 0x0f));
  spin_unlock_irqrestore(&chip->lock, flags);
  snd_cs4231_mce_down(chip);
  snd_cs4231_mce_up(chip);
  spin_lock_irqsave(&chip->lock, flags);
 }
 snd_cs4231_out(chip, CS4231_REC_FORMAT, cdfr);
 spin_unlock_irqrestore(&chip->lock, flags);

 snd_cs4231_mce_down(chip);

 snd_cs4231_calibrate_mute(chip, 0);
 mutex_unlock(&chip->mce_mutex);
}
