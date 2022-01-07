
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_miro {int hardware; TYPE_1__* aci; } ;
struct snd_card {int mixername; } ;
struct TYPE_2__ {char aci_product; int aci_version; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int EINVAL ;


 int snd_BUG () ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_add (struct snd_card*,int ) ;
 int snd_ctl_new1 (int *,struct snd_miro*) ;
 int * snd_miro_amp_control ;
 int * snd_miro_capture_control ;
 int * snd_miro_controls ;
 int * snd_miro_eq_controls ;
 int * snd_miro_line_control ;
 int * snd_miro_preamp_control ;
 int * snd_miro_radio_control ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int snd_miro_mixer(struct snd_card *card,
     struct snd_miro *miro)
{
 unsigned int idx;
 int err;

 if (snd_BUG_ON(!miro || !card))
  return -EINVAL;

 switch (miro->hardware) {
 case 129:
  strcpy(card->mixername, "ACI & OPTi924");
  break;
 case 128:
  strcpy(card->mixername, "ACI & OPTi929");
  break;
 default:
  snd_BUG();
  break;
 }

 for (idx = 0; idx < ARRAY_SIZE(snd_miro_controls); idx++) {
  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_miro_controls[idx], miro))) < 0)
   return err;
 }

 if ((miro->aci->aci_product == 'A') ||
     (miro->aci->aci_product == 'B')) {

  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_miro_line_control[0], miro))) < 0)
   return err;
  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_miro_amp_control[0], miro))) < 0)
   return err;
 }

 if ((miro->aci->aci_product == 'B') ||
     (miro->aci->aci_product == 'C')) {

  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_miro_preamp_control[0], miro))) < 0)
   return err;
  if (miro->aci->aci_version >= 176)
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_miro_capture_control[0], miro))) < 0)
    return err;
 }

 if (miro->aci->aci_product == 'C') {

  if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_miro_radio_control[0], miro))) < 0)
   return err;
  for (idx = 0; idx < ARRAY_SIZE(snd_miro_eq_controls); idx++) {
   if ((err = snd_ctl_add(card, snd_ctl_new1(&snd_miro_eq_controls[idx], miro))) < 0)
    return err;
  }
 }

 return 0;
}
