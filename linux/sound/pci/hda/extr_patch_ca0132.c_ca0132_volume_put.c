
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {unsigned long private_value; } ;
struct TYPE_3__ {long* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int control_mutex; struct ca0132_spec* spec; } ;
struct ca0132_spec {long* vnode_lvol; long* vnode_rvol; } ;
typedef size_t hda_nid_t ;


 unsigned long HDA_COMPOSE_AMP_VAL (size_t,int,int ,int) ;
 size_t VNODE_START_NID ;
 int ca0132_is_vnode_effective (struct hda_codec*,size_t,size_t*) ;
 int get_amp_channels (struct snd_kcontrol*) ;
 int get_amp_direction (struct snd_kcontrol*) ;
 size_t get_amp_nid (struct snd_kcontrol*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_hda_mixer_amp_volume_put (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;
 int snd_hda_power_down (struct hda_codec*) ;
 int snd_hda_power_up (struct hda_codec*) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ca0132_volume_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct ca0132_spec *spec = codec->spec;
 hda_nid_t nid = get_amp_nid(kcontrol);
 int ch = get_amp_channels(kcontrol);
 long *valp = ucontrol->value.integer.value;
 hda_nid_t shared_nid = 0;
 bool effective;
 int changed = 1;


 if (ch & 1) {
  spec->vnode_lvol[nid - VNODE_START_NID] = *valp;
  valp++;
 }
 if (ch & 2) {
  spec->vnode_rvol[nid - VNODE_START_NID] = *valp;
  valp++;
 }


 effective = ca0132_is_vnode_effective(codec, nid, &shared_nid);
 if (effective) {
  int dir = get_amp_direction(kcontrol);
  unsigned long pval;

  snd_hda_power_up(codec);
  mutex_lock(&codec->control_mutex);
  pval = kcontrol->private_value;
  kcontrol->private_value = HDA_COMPOSE_AMP_VAL(shared_nid, ch,
        0, dir);
  changed = snd_hda_mixer_amp_volume_put(kcontrol, ucontrol);
  kcontrol->private_value = pval;
  mutex_unlock(&codec->control_mutex);
  snd_hda_power_down(codec);
 }

 return changed;
}
