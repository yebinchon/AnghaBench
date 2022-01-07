
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {int calibrate_mute; int* image; int lock; } ;


 size_t CS4231_AUX1_LEFT_INPUT ;
 size_t CS4231_AUX1_RIGHT_INPUT ;
 size_t CS4231_AUX2_LEFT_INPUT ;
 size_t CS4231_AUX2_RIGHT_INPUT ;
 size_t CS4231_LEFT_INPUT ;
 size_t CS4231_LEFT_LINE_IN ;
 size_t CS4231_LEFT_OUTPUT ;
 size_t CS4231_LOOPBACK ;
 size_t CS4231_MONO_CTRL ;
 size_t CS4231_RIGHT_INPUT ;
 size_t CS4231_RIGHT_LINE_IN ;
 size_t CS4231_RIGHT_OUTPUT ;
 int snd_cs4231_dout (struct snd_cs4231*,size_t,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs4231_calibrate_mute(struct snd_cs4231 *chip, int mute)
{
 unsigned long flags;

 mute = mute ? 1 : 0;
 spin_lock_irqsave(&chip->lock, flags);
 if (chip->calibrate_mute == mute) {
  spin_unlock_irqrestore(&chip->lock, flags);
  return;
 }
 if (!mute) {
  snd_cs4231_dout(chip, CS4231_LEFT_INPUT,
    chip->image[CS4231_LEFT_INPUT]);
  snd_cs4231_dout(chip, CS4231_RIGHT_INPUT,
    chip->image[CS4231_RIGHT_INPUT]);
  snd_cs4231_dout(chip, CS4231_LOOPBACK,
    chip->image[CS4231_LOOPBACK]);
 }
 snd_cs4231_dout(chip, CS4231_AUX1_LEFT_INPUT,
   mute ? 0x80 : chip->image[CS4231_AUX1_LEFT_INPUT]);
 snd_cs4231_dout(chip, CS4231_AUX1_RIGHT_INPUT,
   mute ? 0x80 : chip->image[CS4231_AUX1_RIGHT_INPUT]);
 snd_cs4231_dout(chip, CS4231_AUX2_LEFT_INPUT,
   mute ? 0x80 : chip->image[CS4231_AUX2_LEFT_INPUT]);
 snd_cs4231_dout(chip, CS4231_AUX2_RIGHT_INPUT,
   mute ? 0x80 : chip->image[CS4231_AUX2_RIGHT_INPUT]);
 snd_cs4231_dout(chip, CS4231_LEFT_OUTPUT,
   mute ? 0x80 : chip->image[CS4231_LEFT_OUTPUT]);
 snd_cs4231_dout(chip, CS4231_RIGHT_OUTPUT,
   mute ? 0x80 : chip->image[CS4231_RIGHT_OUTPUT]);
 snd_cs4231_dout(chip, CS4231_LEFT_LINE_IN,
   mute ? 0x80 : chip->image[CS4231_LEFT_LINE_IN]);
 snd_cs4231_dout(chip, CS4231_RIGHT_LINE_IN,
   mute ? 0x80 : chip->image[CS4231_RIGHT_LINE_IN]);
 snd_cs4231_dout(chip, CS4231_MONO_CTRL,
   mute ? 0xc0 : chip->image[CS4231_MONO_CTRL]);
 chip->calibrate_mute = mute;
 spin_unlock_irqrestore(&chip->lock, flags);
}
