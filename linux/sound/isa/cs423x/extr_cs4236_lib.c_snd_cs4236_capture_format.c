
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_wss {int* image; int reg_lock; } ;
struct snd_pcm_hw_params {int rate_den; } ;


 size_t CS4231_ALT_FEATURE_1 ;
 size_t CS4231_REC_FORMAT ;
 int CS4236_ADC_RATE ;
 unsigned char divisor_to_rate_register (int ) ;
 int snd_cs4236_ext_out (struct snd_wss*,int ,unsigned char) ;
 int snd_wss_out (struct snd_wss*,size_t,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_cs4236_capture_format(struct snd_wss *chip,
          struct snd_pcm_hw_params *params,
          unsigned char cdfr)
{
 unsigned long flags;
 unsigned char rate = divisor_to_rate_register(params->rate_den);

 spin_lock_irqsave(&chip->reg_lock, flags);

 snd_wss_out(chip, CS4231_ALT_FEATURE_1,
      chip->image[CS4231_ALT_FEATURE_1] | 0x20);
 snd_wss_out(chip, CS4231_REC_FORMAT, cdfr & 0xf0);
 snd_wss_out(chip, CS4231_ALT_FEATURE_1,
      chip->image[CS4231_ALT_FEATURE_1] & ~0x20);
 snd_cs4236_ext_out(chip, CS4236_ADC_RATE, rate);
 spin_unlock_irqrestore(&chip->reg_lock, flags);
}
