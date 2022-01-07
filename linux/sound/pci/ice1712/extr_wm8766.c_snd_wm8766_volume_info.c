
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_wm8766 {TYPE_3__* ctl; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int max; int min; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct TYPE_6__ {int flags; int max; int min; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int WM8766_FLAG_STEREO ;
 struct snd_wm8766* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_wm8766_volume_info(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_info *uinfo)
{
 struct snd_wm8766 *wm = snd_kcontrol_chip(kcontrol);
 int n = kcontrol->private_value;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = (wm->ctl[n].flags & WM8766_FLAG_STEREO) ? 2 : 1;
 uinfo->value.integer.min = wm->ctl[n].min;
 uinfo->value.integer.max = wm->ctl[n].max;

 return 0;
}
