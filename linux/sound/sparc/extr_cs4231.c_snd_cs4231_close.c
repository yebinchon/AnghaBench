
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {unsigned int mode; int* image; int open_mutex; int lock; } ;


 int CS4231U (struct snd_cs4231*,int ) ;
 size_t CS4231_IFACE_CTRL ;
 size_t CS4231_IRQ_STATUS ;
 int CS4231_MODE_OPEN ;
 int CS4231_PLAYBACK_ENABLE ;
 int CS4231_PLAYBACK_PIO ;
 int CS4231_RECORD_ENABLE ;
 int CS4231_RECORD_PIO ;
 int STATUS ;
 int __cs4231_writeb (struct snd_cs4231*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_cs4231_calibrate_mute (struct snd_cs4231*,int) ;
 int snd_cs4231_mce_down (struct snd_cs4231*) ;
 int snd_cs4231_mce_up (struct snd_cs4231*) ;
 int snd_cs4231_out (struct snd_cs4231*,size_t,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs4231_close(struct snd_cs4231 *chip, unsigned int mode)
{
 unsigned long flags;

 mutex_lock(&chip->open_mutex);
 chip->mode &= ~mode;
 if (chip->mode & CS4231_MODE_OPEN) {
  mutex_unlock(&chip->open_mutex);
  return;
 }
 snd_cs4231_calibrate_mute(chip, 1);


 spin_lock_irqsave(&chip->lock, flags);
 snd_cs4231_out(chip, CS4231_IRQ_STATUS, 0);
 __cs4231_writeb(chip, 0, CS4231U(chip, STATUS));
 __cs4231_writeb(chip, 0, CS4231U(chip, STATUS));



 if (chip->image[CS4231_IFACE_CTRL] &
     (CS4231_PLAYBACK_ENABLE | CS4231_PLAYBACK_PIO |
      CS4231_RECORD_ENABLE | CS4231_RECORD_PIO)) {
  spin_unlock_irqrestore(&chip->lock, flags);
  snd_cs4231_mce_up(chip);
  spin_lock_irqsave(&chip->lock, flags);
  chip->image[CS4231_IFACE_CTRL] &=
   ~(CS4231_PLAYBACK_ENABLE | CS4231_PLAYBACK_PIO |
     CS4231_RECORD_ENABLE | CS4231_RECORD_PIO);
  snd_cs4231_out(chip, CS4231_IFACE_CTRL,
    chip->image[CS4231_IFACE_CTRL]);
  spin_unlock_irqrestore(&chip->lock, flags);
  snd_cs4231_mce_down(chip);
  spin_lock_irqsave(&chip->lock, flags);
 }


 snd_cs4231_out(chip, CS4231_IRQ_STATUS, 0);
 __cs4231_writeb(chip, 0, CS4231U(chip, STATUS));
 __cs4231_writeb(chip, 0, CS4231U(chip, STATUS));
 spin_unlock_irqrestore(&chip->lock, flags);

 snd_cs4231_calibrate_mute(chip, 0);

 chip->mode = 0;
 mutex_unlock(&chip->open_mutex);
}
