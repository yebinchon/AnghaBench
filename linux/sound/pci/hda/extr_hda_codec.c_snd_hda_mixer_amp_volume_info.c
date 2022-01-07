
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_6__ {int name; } ;
struct snd_kcontrol {TYPE_3__ id; } ;
struct TYPE_4__ {int max; scalar_t__ min; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct hda_codec {int dummy; } ;


 int EINVAL ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int codec_warn (struct hda_codec*,char*,int ,int ) ;
 int get_amp_channels (struct snd_kcontrol*) ;
 int get_amp_direction (struct snd_kcontrol*) ;
 int get_amp_max_value (struct hda_codec*,int ,int,unsigned int) ;
 int get_amp_nid (struct snd_kcontrol*) ;
 unsigned int get_amp_offset (struct snd_kcontrol*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

int snd_hda_mixer_amp_volume_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 u16 nid = get_amp_nid(kcontrol);
 u8 chs = get_amp_channels(kcontrol);
 int dir = get_amp_direction(kcontrol);
 unsigned int ofs = get_amp_offset(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = chs == 3 ? 2 : 1;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = get_amp_max_value(codec, nid, dir, ofs);
 if (!uinfo->value.integer.max) {
  codec_warn(codec,
      "num_steps = 0 for NID=0x%x (ctl = %s)\n",
      nid, kcontrol->id.name);
  return -EINVAL;
 }
 return 0;
}
