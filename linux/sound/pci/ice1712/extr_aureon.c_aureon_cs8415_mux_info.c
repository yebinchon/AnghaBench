
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {scalar_t__ subvendor; } ;
struct snd_ice1712 {TYPE_1__ eeprom; } ;
struct snd_ctl_elem_info {int dummy; } ;


 scalar_t__ VT1724_SUBDEVICE_PRODIGY71 ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int aureon_cs8415_mux_info(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 static const char * const aureon_texts[] = {
  "CD",
  "Optical"
 };
 static const char * const prodigy_texts[] = {
  "CD",
  "Coax"
 };
 if (ice->eeprom.subvendor == VT1724_SUBDEVICE_PRODIGY71)
  return snd_ctl_enum_info(uinfo, 1, 2, prodigy_texts);
 else
  return snd_ctl_enum_info(uinfo, 1, 2, aureon_texts);
}
