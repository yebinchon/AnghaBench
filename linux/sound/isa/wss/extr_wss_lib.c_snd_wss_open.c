
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {unsigned int mode; int hardware; int* image; int open_mutex; int reg_lock; scalar_t__ single_dma; } ;


 int CS4231P (int ) ;
 int CS4231_IRQ_ENABLE ;
 size_t CS4231_IRQ_STATUS ;
 size_t CS4231_PIN_CTRL ;
 int CS4231_PLAYBACK_IRQ ;
 int CS4231_RECORD_IRQ ;
 int CS4231_TIMER_IRQ ;
 int EAGAIN ;
 int STATUS ;
 int WSS_HW_AD1848_MASK ;
 int WSS_MODE_OPEN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_wss_out (struct snd_wss*,size_t,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wss_outb (struct snd_wss*,int ,int ) ;

__attribute__((used)) static int snd_wss_open(struct snd_wss *chip, unsigned int mode)
{
 unsigned long flags;

 mutex_lock(&chip->open_mutex);
 if ((chip->mode & mode) ||
     ((chip->mode & WSS_MODE_OPEN) && chip->single_dma)) {
  mutex_unlock(&chip->open_mutex);
  return -EAGAIN;
 }
 if (chip->mode & WSS_MODE_OPEN) {
  chip->mode |= mode;
  mutex_unlock(&chip->open_mutex);
  return 0;
 }

 spin_lock_irqsave(&chip->reg_lock, flags);
 if (!(chip->hardware & WSS_HW_AD1848_MASK)) {
  snd_wss_out(chip, CS4231_IRQ_STATUS,
       CS4231_PLAYBACK_IRQ |
       CS4231_RECORD_IRQ |
       CS4231_TIMER_IRQ);
  snd_wss_out(chip, CS4231_IRQ_STATUS, 0);
 }
 wss_outb(chip, CS4231P(STATUS), 0);
 wss_outb(chip, CS4231P(STATUS), 0);
 chip->image[CS4231_PIN_CTRL] |= CS4231_IRQ_ENABLE;
 snd_wss_out(chip, CS4231_PIN_CTRL, chip->image[CS4231_PIN_CTRL]);
 if (!(chip->hardware & WSS_HW_AD1848_MASK)) {
  snd_wss_out(chip, CS4231_IRQ_STATUS,
       CS4231_PLAYBACK_IRQ |
       CS4231_RECORD_IRQ |
       CS4231_TIMER_IRQ);
  snd_wss_out(chip, CS4231_IRQ_STATUS, 0);
 }
 spin_unlock_irqrestore(&chip->reg_lock, flags);

 chip->mode = mode;
 mutex_unlock(&chip->open_mutex);
 return 0;
}
