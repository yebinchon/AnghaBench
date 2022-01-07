
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nid_path {scalar_t__ active; } ;
struct hda_input_mux {unsigned int num_items; } ;
struct hda_gen_spec {unsigned int* cur_mux; int (* cap_sync_hook ) (struct hda_codec*,int *,int *) ;scalar_t__ dyn_adc_switch; scalar_t__ hp_mic; struct hda_input_mux input_mux; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int dyn_adc_pcm_resetup (struct hda_codec*,unsigned int) ;
 struct nid_path* get_input_path (struct hda_codec*,unsigned int,unsigned int) ;
 int path_power_down_sync (struct hda_codec*,struct nid_path*) ;
 int snd_hda_activate_path (struct hda_codec*,struct nid_path*,int,int) ;
 int stub1 (struct hda_codec*,int *,int *) ;
 int update_hp_mic (struct hda_codec*,unsigned int,int) ;

__attribute__((used)) static int mux_select(struct hda_codec *codec, unsigned int adc_idx,
        unsigned int idx)
{
 struct hda_gen_spec *spec = codec->spec;
 const struct hda_input_mux *imux;
 struct nid_path *old_path, *path;

 imux = &spec->input_mux;
 if (!imux->num_items)
  return 0;

 if (idx >= imux->num_items)
  idx = imux->num_items - 1;
 if (spec->cur_mux[adc_idx] == idx)
  return 0;

 old_path = get_input_path(codec, adc_idx, spec->cur_mux[adc_idx]);
 if (!old_path)
  return 0;
 if (old_path->active)
  snd_hda_activate_path(codec, old_path, 0, 0);

 spec->cur_mux[adc_idx] = idx;

 if (spec->hp_mic)
  update_hp_mic(codec, adc_idx, 0);

 if (spec->dyn_adc_switch)
  dyn_adc_pcm_resetup(codec, idx);

 path = get_input_path(codec, adc_idx, idx);
 if (!path)
  return 0;
 if (path->active)
  return 0;
 snd_hda_activate_path(codec, path, 1, 0);
 if (spec->cap_sync_hook)
  spec->cap_sync_hook(codec, ((void*)0), ((void*)0));
 path_power_down_sync(codec, old_path);
 return 1;
}
