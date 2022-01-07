
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {int card; TYPE_1__ eeprom; int * cs8427; } ;


 unsigned int ARRAY_SIZE (int *) ;







 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int * snd_ice1712_6fire_controls ;
 int snd_ice1712_akm4xxx_build_controls (struct snd_ice1712*) ;
 int * snd_ice1712_ews88d_controls ;
 int snd_ice1712_ews88mt_input_sense ;
 int snd_ice1712_ews88mt_output_sense ;
 int * snd_ice1712_ewx2496_controls ;
 int snd_ice1712_spdif_build_controls (struct snd_ice1712*) ;

__attribute__((used)) static int snd_ice1712_ews_add_controls(struct snd_ice1712 *ice)
{
 unsigned int idx;
 int err;


 if (ice->cs8427 == ((void*)0)) {
  err = snd_ice1712_spdif_build_controls(ice);
  if (err < 0)
   return err;
 }


 switch (ice->eeprom.subvendor) {
 case 130:
 case 132:
 case 131:
 case 129:
 case 128:
 case 134:
  err = snd_ice1712_akm4xxx_build_controls(ice);
  if (err < 0)
   return err;
  break;
 }


 switch (ice->eeprom.subvendor) {
 case 130:
  for (idx = 0; idx < ARRAY_SIZE(snd_ice1712_ewx2496_controls); idx++) {
   err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_ewx2496_controls[idx], ice));
   if (err < 0)
    return err;
  }
  break;
 case 132:
 case 131:
 case 129:
 case 128:
  err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_ews88mt_input_sense, ice));
  if (err < 0)
   return err;
  err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_ews88mt_output_sense, ice));
  if (err < 0)
   return err;
  break;
 case 133:
  for (idx = 0; idx < ARRAY_SIZE(snd_ice1712_ews88d_controls); idx++) {
   err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_ews88d_controls[idx], ice));
   if (err < 0)
    return err;
  }
  break;
 case 134:
  for (idx = 0; idx < ARRAY_SIZE(snd_ice1712_6fire_controls); idx++) {
   err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_6fire_controls[idx], ice));
   if (err < 0)
    return err;
  }
  break;
 }
 return 0;
}
