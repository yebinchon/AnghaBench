
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; int card; } ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int snd_ice1712_akm4xxx_build_controls (struct snd_ice1712*) ;
 int snd_ice1712_delta1010_wordclock_select ;
 int snd_ice1712_delta1010_wordclock_status ;
 int snd_ice1712_delta1010lt_wordclock_select ;
 int snd_ice1712_delta1010lt_wordclock_status ;
 int snd_ice1712_delta_spdif_in_status ;
 int snd_ice1712_deltadio2496_spdif_in_select ;
 int snd_ice1712_spdif_build_controls (struct snd_ice1712*) ;

__attribute__((used)) static int snd_ice1712_delta_add_controls(struct snd_ice1712 *ice)
{
 int err;


 switch (ice->eeprom.subvendor) {
 case 138:
 case 129:
  err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_delta1010_wordclock_select, ice));
  if (err < 0)
   return err;
  err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_delta1010_wordclock_status, ice));
  if (err < 0)
   return err;
  break;
 case 131:
  err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_deltadio2496_spdif_in_select, ice));
  if (err < 0)
   return err;
  break;
 case 137:
 case 136:
  err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_delta1010lt_wordclock_select, ice));
  if (err < 0)
   return err;
  err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_delta1010lt_wordclock_status, ice));
  if (err < 0)
   return err;
  break;
 }


 switch (ice->eeprom.subvendor) {
 case 138:
 case 131:
 case 133:
 case 129:
  err = snd_ice1712_spdif_build_controls(ice);
  if (err < 0)
   return err;
  break;
 }


 switch (ice->eeprom.subvendor) {
 case 138:
 case 131:
 case 133:
 case 129:
  err = snd_ctl_add(ice->card, snd_ctl_new1(&snd_ice1712_delta_spdif_in_status, ice));
  if (err < 0)
   return err;
  break;
 }


 switch (ice->eeprom.subvendor) {
 case 136:
 case 139:
 case 135:
 case 134:
 case 133:
 case 128:
 case 132:
 case 130:
  err = snd_ice1712_akm4xxx_build_controls(ice);
  if (err < 0)
   return err;
  break;
 }

 return 0;
}
