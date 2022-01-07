
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_es18xx {int version; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int EINVAL ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;
 struct snd_es18xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_es18xx_info_mux(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts5Source[5] = {
  "Mic", "CD", "Line", "Master", "Mix"
 };
 static const char * const texts8Source[8] = {
  "Mic", "Mic Master", "CD", "AOUT",
  "Mic1", "Mix", "Line", "Master"
 };
 struct snd_es18xx *chip = snd_kcontrol_chip(kcontrol);

 switch (chip->version) {
 case 0x1868:
 case 0x1878:
  return snd_ctl_enum_info(uinfo, 1, 4, texts5Source);
 case 0x1887:
 case 0x1888:
  return snd_ctl_enum_info(uinfo, 1, 5, texts5Source);
 case 0x1869:
 case 0x1879:
  return snd_ctl_enum_info(uinfo, 1, 8, texts8Source);
 default:
  return -EINVAL;
 }
}
