
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_enum {scalar_t__ shift_l; scalar_t__ shift_r; int texts; int items; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,int ) ;

int snd_soc_info_enum_double(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_info *uinfo)
{
 struct soc_enum *e = (struct soc_enum *)kcontrol->private_value;

 return snd_ctl_enum_info(uinfo, e->shift_l == e->shift_r ? 1 : 2,
     e->items, e->texts);
}
