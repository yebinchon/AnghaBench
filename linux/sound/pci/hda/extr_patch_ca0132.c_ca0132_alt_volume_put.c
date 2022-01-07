
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int control_mutex; struct ca0132_spec* spec; } ;
struct ca0132_spec {long* vnode_lvol; long* vnode_rvol; } ;
typedef int hda_nid_t ;


 int VNID_MIC ;
 int VNID_SPK ;
 int VNODE_START_NID ;
 int ca0132_alt_dsp_volume_put (struct hda_codec*,int) ;
 int get_amp_channels (struct snd_kcontrol*) ;
 int get_amp_nid (struct snd_kcontrol*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_mixer_amp_volume_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int snd_hda_power_down (struct hda_codec*) ;
 int snd_hda_power_up (struct hda_codec*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ca0132_alt_volume_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ca0132_spec *spec = codec->spec;
 hda_nid_t nid = get_amp_nid(kcontrol);
 int ch = get_amp_channels(kcontrol);
 long *valp = ucontrol->value.integer.value;
 hda_nid_t vnid = 0;
 int changed;

 switch (nid) {
 case 0x02:
  vnid = VNID_SPK;
  break;
 case 0x07:
  vnid = VNID_MIC;
  break;
 }


 if (ch & 1) {
  spec->vnode_lvol[vnid - VNODE_START_NID] = *valp;
  valp++;
 }
 if (ch & 2) {
  spec->vnode_rvol[vnid - VNODE_START_NID] = *valp;
  valp++;
 }

 snd_hda_power_up(codec);
 ca0132_alt_dsp_volume_put(codec, vnid);
 mutex_lock(&codec->control_mutex);
 changed = snd_hda_mixer_amp_volume_put(kcontrol, ucontrol);
 mutex_unlock(&codec->control_mutex);
 snd_hda_power_down(codec);

 return changed;
}
