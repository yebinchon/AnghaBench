
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {unsigned int mode; int open_mutex; int lock; } ;


 int CS4231U (struct snd_cs4231*,int ) ;
 int CS4231_IRQ_STATUS ;
 int CS4231_MODE_OPEN ;
 int CS4231_PLAYBACK_IRQ ;
 int CS4231_RECORD_IRQ ;
 int CS4231_TIMER_IRQ ;
 int EAGAIN ;
 int STATUS ;
 int __cs4231_writeb (struct snd_cs4231*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_cs4231_out (struct snd_cs4231*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_cs4231_open(struct snd_cs4231 *chip, unsigned int mode)
{
 unsigned long flags;

 mutex_lock(&chip->open_mutex);
 if ((chip->mode & mode)) {
  mutex_unlock(&chip->open_mutex);
  return -EAGAIN;
 }
 if (chip->mode & CS4231_MODE_OPEN) {
  chip->mode |= mode;
  mutex_unlock(&chip->open_mutex);
  return 0;
 }

 spin_lock_irqsave(&chip->lock, flags);
 snd_cs4231_out(chip, CS4231_IRQ_STATUS, CS4231_PLAYBACK_IRQ |
         CS4231_RECORD_IRQ |
         CS4231_TIMER_IRQ);
 snd_cs4231_out(chip, CS4231_IRQ_STATUS, 0);
 __cs4231_writeb(chip, 0, CS4231U(chip, STATUS));
 __cs4231_writeb(chip, 0, CS4231U(chip, STATUS));

 snd_cs4231_out(chip, CS4231_IRQ_STATUS, CS4231_PLAYBACK_IRQ |
         CS4231_RECORD_IRQ |
         CS4231_TIMER_IRQ);
 snd_cs4231_out(chip, CS4231_IRQ_STATUS, 0);

 spin_unlock_irqrestore(&chip->lock, flags);

 chip->mode = mode;
 mutex_unlock(&chip->open_mutex);
 return 0;
}
