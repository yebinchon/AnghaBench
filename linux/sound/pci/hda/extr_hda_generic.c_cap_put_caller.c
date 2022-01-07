
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct snd_kcontrol {scalar_t__ private_value; TYPE_1__ id; } ;
struct snd_ctl_elem_value {int dummy; } ;
struct nid_path {scalar_t__* ctls; } ;
struct hda_input_mux {int num_items; } ;
struct hda_gen_spec {int (* cap_sync_hook ) (struct hda_codec*,struct snd_kcontrol*,struct snd_ctl_elem_value*) ;struct hda_input_mux input_mux; } ;
struct hda_codec {int control_mutex; struct hda_gen_spec* spec; } ;
typedef int (* put_call_t ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;


 struct nid_path* get_input_path (struct hda_codec*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct hda_codec*,struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int cap_put_caller(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol,
     put_call_t func, int type)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hda_gen_spec *spec = codec->spec;
 const struct hda_input_mux *imux;
 struct nid_path *path;
 int i, adc_idx, err = 0;

 imux = &spec->input_mux;
 adc_idx = kcontrol->id.index;
 mutex_lock(&codec->control_mutex);
 for (i = 0; i < imux->num_items; i++) {
  path = get_input_path(codec, adc_idx, i);
  if (!path || !path->ctls[type])
   continue;
  kcontrol->private_value = path->ctls[type];
  err = func(kcontrol, ucontrol);
  if (err < 0)
   break;
 }
 mutex_unlock(&codec->control_mutex);
 if (err >= 0 && spec->cap_sync_hook)
  spec->cap_sync_hook(codec, kcontrol, ucontrol);
 return err;
}
