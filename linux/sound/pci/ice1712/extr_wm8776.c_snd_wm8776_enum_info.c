
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_wm8776 {TYPE_1__* ctl; } ;
struct snd_kcontrol {int private_value; } ;
struct snd_ctl_elem_info {int dummy; } ;
struct TYPE_2__ {int enum_names; int max; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int ,int ) ;
 struct snd_wm8776* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_wm8776_enum_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 struct snd_wm8776 *wm = snd_kcontrol_chip(kcontrol);
 int n = kcontrol->private_value;

 return snd_ctl_enum_info(uinfo, 1, wm->ctl[n].max,
      wm->ctl[n].enum_names);
}
