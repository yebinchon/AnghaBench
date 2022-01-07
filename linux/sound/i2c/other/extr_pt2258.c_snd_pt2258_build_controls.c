
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pt2258 {int card; } ;
struct TYPE_2__ {int p; } ;
struct snd_kcontrol_new {char* name; int count; int access; int private_value; int put; int get; int info; void* iface; TYPE_1__ tlv; } ;
typedef int knew ;


 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READ ;
 void* SNDRV_CTL_ELEM_IFACE_MIXER ;
 int memset (struct snd_kcontrol_new*,int ,int) ;
 int pt2258_db_scale ;
 int pt2258_stereo_volume_get ;
 int pt2258_stereo_volume_info ;
 int pt2258_stereo_volume_put ;
 int pt2258_switch_get ;
 int pt2258_switch_info ;
 int pt2258_switch_put ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_pt2258*) ;

int snd_pt2258_build_controls(struct snd_pt2258 *pt)
{
 struct snd_kcontrol_new knew;
 char *names[3] = {
  "Mic Loopback Playback Volume",
  "Line Loopback Playback Volume",
  "CD Loopback Playback Volume"
 };
 int i, err;

 for (i = 0; i < 3; ++i) {
  memset(&knew, 0, sizeof(knew));
  knew.name = names[i];
  knew.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
  knew.count = 1;
  knew.access = SNDRV_CTL_ELEM_ACCESS_READWRITE |
      SNDRV_CTL_ELEM_ACCESS_TLV_READ;
  knew.private_value = 2 * i;
  knew.info = pt2258_stereo_volume_info;
  knew.get = pt2258_stereo_volume_get;
  knew.put = pt2258_stereo_volume_put;
  knew.tlv.p = pt2258_db_scale;

  err = snd_ctl_add(pt->card, snd_ctl_new1(&knew, pt));
  if (err < 0)
   return err;
 }

 memset(&knew, 0, sizeof(knew));
 knew.name = "Loopback Switch";
 knew.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 knew.info = pt2258_switch_info;
 knew.get = pt2258_switch_get;
 knew.put = pt2258_switch_put;
 knew.access = 0;
 err = snd_ctl_add(pt->card, snd_ctl_new1(&knew, pt));
 if (err < 0)
  return err;

 return 0;
}
