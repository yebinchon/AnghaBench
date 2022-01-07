
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {void* private_free; } ;
struct snd_es18xx {int caps; int version; struct snd_kcontrol* hw_switch; struct snd_kcontrol* hw_volume; struct snd_kcontrol* master_switch; struct snd_kcontrol* master_volume; TYPE_1__* pcm; } ;
struct snd_card {int mixername; struct snd_es18xx* private_data; } ;
struct TYPE_2__ {int name; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ES18XX_GPO_2BIT ;
 int ES18XX_HWV ;
 int ES18XX_PCM2 ;
 int ES18XX_RECMIX ;
 int ES18XX_SPATIALIZER ;
 int snd_ctl_add (struct snd_card*,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_es18xx*) ;
 int * snd_es18xx_base_controls ;
 int * snd_es18xx_hw_volume_controls ;
 void* snd_es18xx_hwv_free ;
 int snd_es18xx_micpre1_control ;
 int snd_es18xx_micpre2_control ;
 int * snd_es18xx_opt_1869 ;
 int snd_es18xx_opt_1878 ;
 int * snd_es18xx_opt_1879 ;
 int * snd_es18xx_opt_gpo_2bit ;
 int snd_es18xx_opt_speaker ;
 int * snd_es18xx_pcm1_controls ;
 int * snd_es18xx_pcm2_controls ;
 int * snd_es18xx_recmix_controls ;
 int * snd_es18xx_spatializer_controls ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_es18xx_mixer(struct snd_card *card)
{
 struct snd_es18xx *chip = card->private_data;
 int err;
 unsigned int idx;

 strcpy(card->mixername, chip->pcm->name);

 for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_base_controls); idx++) {
  struct snd_kcontrol *kctl;
  kctl = snd_ctl_new1(&snd_es18xx_base_controls[idx], chip);
  if (chip->caps & ES18XX_HWV) {
   switch (idx) {
   case 0:
    chip->master_volume = kctl;
    kctl->private_free = snd_es18xx_hwv_free;
    break;
   case 1:
    chip->master_switch = kctl;
    kctl->private_free = snd_es18xx_hwv_free;
    break;
   }
  }
  if ((err = snd_ctl_add(card, kctl)) < 0)
   return err;
 }
 if (chip->caps & ES18XX_PCM2) {
  for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_pcm2_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_es18xx_pcm2_controls[idx], chip))) < 0)
    return err;
  }
 } else {
  for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_pcm1_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_es18xx_pcm1_controls[idx], chip))) < 0)
    return err;
  }
 }

 if (chip->caps & ES18XX_RECMIX) {
  for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_recmix_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_es18xx_recmix_controls[idx], chip))) < 0)
    return err;
  }
 }
 switch (chip->version) {
 default:
  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_es18xx_micpre1_control, chip))) < 0)
   return err;
  break;
 case 0x1869:
 case 0x1879:
  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_es18xx_micpre2_control, chip))) < 0)
   return err;
  break;
 }
 if (chip->caps & ES18XX_SPATIALIZER) {
  for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_spatializer_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_es18xx_spatializer_controls[idx], chip))) < 0)
    return err;
  }
 }
 if (chip->caps & ES18XX_HWV) {
  for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_hw_volume_controls); idx++) {
   struct snd_kcontrol *kctl;
   kctl = snd_ctl_new1(&snd_es18xx_hw_volume_controls[idx], chip);
   if (idx == 0)
    chip->hw_volume = kctl;
   else
    chip->hw_switch = kctl;
   kctl->private_free = snd_es18xx_hwv_free;
   if ((err = snd_ctl_add(card, kctl)) < 0)
    return err;

  }
 }


 if (chip->version != 0x1868) {
  err = snd_ctl_add(card, snd_ctl_new1(&snd_es18xx_opt_speaker,
           chip));
  if (err < 0)
   return err;
 }
 if (chip->version == 0x1869) {
  for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_opt_1869); idx++) {
   err = snd_ctl_add(card,
       snd_ctl_new1(&snd_es18xx_opt_1869[idx],
             chip));
   if (err < 0)
    return err;
  }
 } else if (chip->version == 0x1878) {
  err = snd_ctl_add(card, snd_ctl_new1(&snd_es18xx_opt_1878,
           chip));
  if (err < 0)
   return err;
 } else if (chip->version == 0x1879) {
  for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_opt_1879); idx++) {
   err = snd_ctl_add(card,
       snd_ctl_new1(&snd_es18xx_opt_1879[idx],
             chip));
   if (err < 0)
    return err;
  }
 }
 if (chip->caps & ES18XX_GPO_2BIT) {
  for (idx = 0; idx < ARRAY_SIZE(snd_es18xx_opt_gpo_2bit); idx++) {
   err = snd_ctl_add(card,
       snd_ctl_new1(&snd_es18xx_opt_gpo_2bit[idx],
             chip));
   if (err < 0)
    return err;
  }
 }
 return 0;
}
