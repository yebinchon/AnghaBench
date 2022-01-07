
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {int flags; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int F_HAVEDIGITAL ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,unsigned int,char const* const*) ;
 struct snd_msnd* snd_kcontrol_chip (struct snd_kcontrol*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int snd_msndmix_info_mux(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[3] = {
  "Analog", "MASS", "SPDIF",
 };
 struct snd_msnd *chip = snd_kcontrol_chip(kcontrol);
 unsigned items = test_bit(F_HAVEDIGITAL, &chip->flags) ? 3 : 2;

 return snd_ctl_enum_info(uinfo, 1, items, texts);
}
