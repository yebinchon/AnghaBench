
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_hda_enum_bool_helper_info (struct snd_kcontrol*,struct snd_ctl_elem_info*) ;

__attribute__((used)) static int indep_hp_info(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_info *uinfo)
{
 return snd_hda_enum_bool_helper_info(kcontrol, uinfo);
}
