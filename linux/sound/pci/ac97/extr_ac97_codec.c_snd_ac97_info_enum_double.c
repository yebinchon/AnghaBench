
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct ac97_enum {scalar_t__ shift_l; scalar_t__ shift_r; int texts; int mask; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,int ) ;

__attribute__((used)) static int snd_ac97_info_enum_double(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_info *uinfo)
{
 struct ac97_enum *e = (struct ac97_enum *)kcontrol->private_value;

 return snd_ctl_enum_info(uinfo, e->shift_l == e->shift_r ? 1 : 2,
     e->mask, e->texts);
}
