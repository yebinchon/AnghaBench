
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_wm8766 {int card; TYPE_2__* ctl; } ;
struct TYPE_3__ {int * p; } ;
struct snd_kcontrol_new {int private_value; int info; TYPE_1__ tlv; int access; int put; int get; int name; int iface; } ;
struct snd_kcontrol {int dummy; } ;
typedef int cont ;
struct TYPE_4__ {int flags; int type; int max; struct snd_kcontrol* kctl; int * tlv; int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READ ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;



 int WM8766_FLAG_ALC ;
 int WM8766_FLAG_LIM ;
 int WM8766_FLAG_STEREO ;
 int memset (struct snd_kcontrol_new*,int ,int) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 int snd_ctl_boolean_mono_info ;
 int snd_ctl_boolean_stereo_info ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_wm8766*) ;
 int snd_wm8766_ctl_get ;
 int snd_wm8766_ctl_put ;
 int snd_wm8766_enum_info ;
 int snd_wm8766_volume_info ;

__attribute__((used)) static int snd_wm8766_add_control(struct snd_wm8766 *wm, int num)
{
 struct snd_kcontrol_new cont;
 struct snd_kcontrol *ctl;

 memset(&cont, 0, sizeof(cont));
 cont.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 cont.private_value = num;
 cont.name = wm->ctl[num].name;
 cont.access = SNDRV_CTL_ELEM_ACCESS_READWRITE;
 if (wm->ctl[num].flags & WM8766_FLAG_LIM ||
     wm->ctl[num].flags & WM8766_FLAG_ALC)
  cont.access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 cont.tlv.p = ((void*)0);
 cont.get = snd_wm8766_ctl_get;
 cont.put = snd_wm8766_ctl_put;

 switch (wm->ctl[num].type) {
 case 128:
  cont.info = snd_wm8766_volume_info;
  cont.access |= SNDRV_CTL_ELEM_ACCESS_TLV_READ;
  cont.tlv.p = wm->ctl[num].tlv;
  break;
 case 130:
  wm->ctl[num].max = 1;
  if (wm->ctl[num].flags & WM8766_FLAG_STEREO)
   cont.info = snd_ctl_boolean_stereo_info;
  else
   cont.info = snd_ctl_boolean_mono_info;
  break;
 case 129:
  cont.info = snd_wm8766_enum_info;
  break;
 default:
  return -EINVAL;
 }
 ctl = snd_ctl_new1(&cont, wm);
 if (!ctl)
  return -ENOMEM;
 wm->ctl[num].kctl = ctl;

 return snd_ctl_add(wm->card, ctl);
}
