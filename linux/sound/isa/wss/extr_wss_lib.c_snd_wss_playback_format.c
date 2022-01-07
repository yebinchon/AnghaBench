
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int hardware; int* image; int mce_mutex; int reg_lock; int single_dma; } ;
struct snd_pcm_hw_params {int dummy; } ;


 size_t AD1845_LWR_FREQ_SEL ;
 size_t AD1845_UPR_FREQ_SEL ;
 size_t CS4231_ALT_FEATURE_1 ;
 size_t CS4231_IFACE_CTRL ;
 size_t CS4231_PLAYBK_FORMAT ;
 int CS4231_RECORD_ENABLE ;
 size_t CS4231_REC_FORMAT ;
 int WSS_HW_AD1845 ;
 int WSS_HW_CS4231A ;
 int WSS_HW_CS4232_MASK ;
 scalar_t__ WSS_HW_INTERWAVE ;
 scalar_t__ WSS_HW_OPL3SA2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_wss_mce_down (struct snd_wss*) ;
 int snd_wss_mce_up (struct snd_wss*) ;
 int snd_wss_out (struct snd_wss*,size_t,unsigned char) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static void snd_wss_playback_format(struct snd_wss *chip,
           struct snd_pcm_hw_params *params,
           unsigned char pdfr)
{
 unsigned long flags;
 int full_calib = 1;

 mutex_lock(&chip->mce_mutex);
 if (chip->hardware == WSS_HW_CS4231A ||
     (chip->hardware & WSS_HW_CS4232_MASK)) {
  spin_lock_irqsave(&chip->reg_lock, flags);
  if ((chip->image[CS4231_PLAYBK_FORMAT] & 0x0f) == (pdfr & 0x0f)) {
   snd_wss_out(chip, CS4231_ALT_FEATURE_1,
        chip->image[CS4231_ALT_FEATURE_1] | 0x10);
   chip->image[CS4231_PLAYBK_FORMAT] = pdfr;
   snd_wss_out(chip, CS4231_PLAYBK_FORMAT,
        chip->image[CS4231_PLAYBK_FORMAT]);
   snd_wss_out(chip, CS4231_ALT_FEATURE_1,
        chip->image[CS4231_ALT_FEATURE_1] &= ~0x10);
   udelay(100);
   full_calib = 0;
  }
  spin_unlock_irqrestore(&chip->reg_lock, flags);
 } else if (chip->hardware == WSS_HW_AD1845) {
  unsigned rate = params_rate(params);
  spin_lock_irqsave(&chip->reg_lock, flags);
  snd_wss_out(chip, CS4231_PLAYBK_FORMAT, (pdfr & 0xf0));
  snd_wss_out(chip, AD1845_UPR_FREQ_SEL, (rate >> 8) & 0xff);
  snd_wss_out(chip, AD1845_LWR_FREQ_SEL, rate & 0xff);
  full_calib = 0;
  spin_unlock_irqrestore(&chip->reg_lock, flags);
 }
 if (full_calib) {
  snd_wss_mce_up(chip);
  spin_lock_irqsave(&chip->reg_lock, flags);
  if (chip->hardware != WSS_HW_INTERWAVE && !chip->single_dma) {
   if (chip->image[CS4231_IFACE_CTRL] & CS4231_RECORD_ENABLE)
    pdfr = (pdfr & 0xf0) |
           (chip->image[CS4231_REC_FORMAT] & 0x0f);
  } else {
   chip->image[CS4231_PLAYBK_FORMAT] = pdfr;
  }
  snd_wss_out(chip, CS4231_PLAYBK_FORMAT, pdfr);
  spin_unlock_irqrestore(&chip->reg_lock, flags);
  if (chip->hardware == WSS_HW_OPL3SA2)
   udelay(100);
  snd_wss_mce_down(chip);
 }
 mutex_unlock(&chip->mce_mutex);
}
