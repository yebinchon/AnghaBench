
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_value {int dummy; } ;


 int NID_PATH_MUTE_CTL ;
 int cap_put_caller (struct snd_kcontrol*,struct snd_ctl_elem_value*,int ,int ) ;
 int snd_hda_mixer_amp_switch_put ;

__attribute__((used)) static int cap_sw_put(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 return cap_put_caller(kcontrol, ucontrol,
         snd_hda_mixer_amp_switch_put,
         NID_PATH_MUTE_CTL);
}
