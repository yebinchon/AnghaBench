
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ swap_mic_linein; } ;
struct TYPE_3__ {TYPE_2__ ad18xx; } ;
struct snd_ac97 {TYPE_1__ spec; } ;


 unsigned short AC97_AD1986_CLDIS ;
 unsigned short AC97_AD1986_LISEL_MASK ;
 unsigned short AC97_AD1986_LISEL_MIC ;
 unsigned short AC97_AD1986_LISEL_SURR ;
 unsigned short AC97_AD1986_OMS_C ;
 unsigned short AC97_AD1986_OMS_L ;
 unsigned short AC97_AD1986_OMS_M ;
 unsigned short AC97_AD1986_OMS_MASK ;
 unsigned short AC97_AD1986_SODIS ;
 int AC97_AD_MISC ;
 int AC97_AD_SERIAL_CFG ;
 int is_clfe_on (struct snd_ac97*) ;
 scalar_t__ is_shared_linein (struct snd_ac97*) ;
 scalar_t__ is_shared_micin (struct snd_ac97*) ;
 int is_surround_on (struct snd_ac97*) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,unsigned short,unsigned short) ;

__attribute__((used)) static void ad1986_update_jacks(struct snd_ac97 *ac97)
{
 unsigned short misc_val = 0;
 unsigned short ser_val;


 if (!is_surround_on(ac97))
  misc_val |= AC97_AD1986_SODIS;
 if (!is_clfe_on(ac97))
  misc_val |= AC97_AD1986_CLDIS;


 if (is_shared_linein(ac97))
  misc_val |= AC97_AD1986_LISEL_SURR;
 else if (ac97->spec.ad18xx.swap_mic_linein != 0)
  misc_val |= AC97_AD1986_LISEL_MIC;
 snd_ac97_update_bits(ac97, AC97_AD_MISC,
        AC97_AD1986_SODIS | AC97_AD1986_CLDIS |
        AC97_AD1986_LISEL_MASK,
        misc_val);


 if (is_shared_micin(ac97))
  ser_val = AC97_AD1986_OMS_C;
 else if (ac97->spec.ad18xx.swap_mic_linein != 0)
  ser_val = AC97_AD1986_OMS_L;
 else
  ser_val = AC97_AD1986_OMS_M;
 snd_ac97_update_bits(ac97, AC97_AD_SERIAL_CFG,
        AC97_AD1986_OMS_MASK,
        ser_val);
}
