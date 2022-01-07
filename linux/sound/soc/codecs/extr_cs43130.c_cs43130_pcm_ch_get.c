
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int snd_soc_get_enum_double (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int cs43130_pcm_ch_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 return snd_soc_get_enum_double(kcontrol, ucontrol);
}
