
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct img_spdif_in {int multi_freq; int lock; scalar_t__ active; } ;


 int EBUSY ;
 int IMG_SPDIF_IN_NUM_ACLKGEN ;
 int img_spdif_in_do_clkgen_multi (struct img_spdif_in*,unsigned int*) ;
 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct img_spdif_in* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int img_spdif_in_set_multi_freq(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct img_spdif_in *spdif = snd_soc_dai_get_drvdata(cpu_dai);
 unsigned int multi_freqs[IMG_SPDIF_IN_NUM_ACLKGEN];
 bool multi_freq;
 unsigned long flags;

 if ((ucontrol->value.integer.value[0] == 0) &&
   (ucontrol->value.integer.value[1] == 0) &&
   (ucontrol->value.integer.value[2] == 0) &&
   (ucontrol->value.integer.value[3] == 0)) {
  multi_freq = 0;
 } else {
  multi_freqs[0] = ucontrol->value.integer.value[0];
  multi_freqs[1] = ucontrol->value.integer.value[1];
  multi_freqs[2] = ucontrol->value.integer.value[2];
  multi_freqs[3] = ucontrol->value.integer.value[3];
  multi_freq = 1;
 }

 if (multi_freq)
  return img_spdif_in_do_clkgen_multi(spdif, multi_freqs);

 spin_lock_irqsave(&spdif->lock, flags);

 if (spdif->active) {
  spin_unlock_irqrestore(&spdif->lock, flags);
  return -EBUSY;
 }

 spdif->multi_freq = 0;

 spin_unlock_irqrestore(&spdif->lock, flags);

 return 0;
}
