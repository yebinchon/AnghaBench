
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int calibrate_mute; int* image; int hardware; int reg_lock; } ;


 size_t CS4231_AUX1_LEFT_INPUT ;
 size_t CS4231_AUX1_RIGHT_INPUT ;
 size_t CS4231_AUX2_LEFT_INPUT ;
 size_t CS4231_AUX2_RIGHT_INPUT ;
 size_t CS4231_LEFT_INPUT ;
 size_t CS4231_LEFT_LINE_IN ;
 size_t CS4231_LEFT_MIC_INPUT ;
 size_t CS4231_LEFT_OUTPUT ;
 size_t CS4231_LINE_LEFT_OUTPUT ;
 size_t CS4231_LINE_RIGHT_OUTPUT ;
 size_t CS4231_LOOPBACK ;
 size_t CS4231_MONO_CTRL ;
 size_t CS4231_RIGHT_INPUT ;
 size_t CS4231_RIGHT_LINE_IN ;
 size_t CS4231_RIGHT_MIC_INPUT ;
 size_t CS4231_RIGHT_OUTPUT ;
 int WSS_HW_AD1848_MASK ;
 int WSS_HW_INTERWAVE ;
 int snd_wss_dout (struct snd_wss*,size_t,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_wss_calibrate_mute(struct snd_wss *chip, int mute)
{
 unsigned long flags;

 mute = mute ? 0x80 : 0;
 spin_lock_irqsave(&chip->reg_lock, flags);
 if (chip->calibrate_mute == mute) {
  spin_unlock_irqrestore(&chip->reg_lock, flags);
  return;
 }
 if (!mute) {
  snd_wss_dout(chip, CS4231_LEFT_INPUT,
        chip->image[CS4231_LEFT_INPUT]);
  snd_wss_dout(chip, CS4231_RIGHT_INPUT,
        chip->image[CS4231_RIGHT_INPUT]);
  snd_wss_dout(chip, CS4231_LOOPBACK,
        chip->image[CS4231_LOOPBACK]);
 } else {
  snd_wss_dout(chip, CS4231_LEFT_INPUT,
        0);
  snd_wss_dout(chip, CS4231_RIGHT_INPUT,
        0);
  snd_wss_dout(chip, CS4231_LOOPBACK,
        0xfd);
 }

 snd_wss_dout(chip, CS4231_AUX1_LEFT_INPUT,
       mute | chip->image[CS4231_AUX1_LEFT_INPUT]);
 snd_wss_dout(chip, CS4231_AUX1_RIGHT_INPUT,
       mute | chip->image[CS4231_AUX1_RIGHT_INPUT]);
 snd_wss_dout(chip, CS4231_AUX2_LEFT_INPUT,
       mute | chip->image[CS4231_AUX2_LEFT_INPUT]);
 snd_wss_dout(chip, CS4231_AUX2_RIGHT_INPUT,
       mute | chip->image[CS4231_AUX2_RIGHT_INPUT]);
 snd_wss_dout(chip, CS4231_LEFT_OUTPUT,
       mute | chip->image[CS4231_LEFT_OUTPUT]);
 snd_wss_dout(chip, CS4231_RIGHT_OUTPUT,
       mute | chip->image[CS4231_RIGHT_OUTPUT]);
 if (!(chip->hardware & WSS_HW_AD1848_MASK)) {
  snd_wss_dout(chip, CS4231_LEFT_LINE_IN,
        mute | chip->image[CS4231_LEFT_LINE_IN]);
  snd_wss_dout(chip, CS4231_RIGHT_LINE_IN,
        mute | chip->image[CS4231_RIGHT_LINE_IN]);
  snd_wss_dout(chip, CS4231_MONO_CTRL,
        mute ? 0xc0 : chip->image[CS4231_MONO_CTRL]);
 }
 if (chip->hardware == WSS_HW_INTERWAVE) {
  snd_wss_dout(chip, CS4231_LEFT_MIC_INPUT,
        mute | chip->image[CS4231_LEFT_MIC_INPUT]);
  snd_wss_dout(chip, CS4231_RIGHT_MIC_INPUT,
        mute | chip->image[CS4231_RIGHT_MIC_INPUT]);
  snd_wss_dout(chip, CS4231_LINE_LEFT_OUTPUT,
        mute | chip->image[CS4231_LINE_LEFT_OUTPUT]);
  snd_wss_dout(chip, CS4231_LINE_RIGHT_OUTPUT,
        mute | chip->image[CS4231_LINE_RIGHT_OUTPUT]);
 }
 chip->calibrate_mute = mute;
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
