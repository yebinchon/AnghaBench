
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ hook; int sw_kctl; } ;
struct TYPE_9__ {int share_spdif; scalar_t__ dig_out_nid; } ;
struct TYPE_6__ {int list; scalar_t__ used; } ;
struct hda_gen_spec {int autocfg; TYPE_3__ vmaster_mute; int vmaster_mute_enum; int suppress_vmaster; int no_analog; int vmaster_tlv; scalar_t__ dig_in_nid; TYPE_4__ multiout; TYPE_2__** pcm_rec; TYPE_1__ kctls; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
struct TYPE_7__ {int pcm_type; } ;


 int __snd_hda_add_vmaster (struct hda_codec*,char*,int *,int ,char*,int,int *) ;
 int free_kctls (struct hda_gen_spec*) ;
 int slave_pfxs ;
 int snd_hda_add_new_ctls (struct hda_codec*,int ) ;
 int snd_hda_add_vmaster (struct hda_codec*,char*,int ,int ,char*) ;
 int snd_hda_add_vmaster_hook (struct hda_codec*,TYPE_3__*,int ) ;
 int snd_hda_create_dig_out_ctls (struct hda_codec*,scalar_t__,scalar_t__,int ) ;
 int snd_hda_create_spdif_in_ctls (struct hda_codec*,scalar_t__) ;
 int snd_hda_create_spdif_share_sw (struct hda_codec*,TYPE_4__*) ;
 int snd_hda_find_mixer_ctl (struct hda_codec*,char*) ;
 int snd_hda_jack_add_kctls (struct hda_codec*,int *) ;
 int snd_hda_sync_vmaster_hook (TYPE_3__*) ;

int snd_hda_gen_build_controls(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 int err;

 if (spec->kctls.used) {
  err = snd_hda_add_new_ctls(codec, spec->kctls.list);
  if (err < 0)
   return err;
 }

 if (spec->multiout.dig_out_nid) {
  err = snd_hda_create_dig_out_ctls(codec,
        spec->multiout.dig_out_nid,
        spec->multiout.dig_out_nid,
        spec->pcm_rec[1]->pcm_type);
  if (err < 0)
   return err;
  if (!spec->no_analog) {
   err = snd_hda_create_spdif_share_sw(codec,
           &spec->multiout);
   if (err < 0)
    return err;
   spec->multiout.share_spdif = 1;
  }
 }
 if (spec->dig_in_nid) {
  err = snd_hda_create_spdif_in_ctls(codec, spec->dig_in_nid);
  if (err < 0)
   return err;
 }


 if (!spec->no_analog && !spec->suppress_vmaster &&
     !snd_hda_find_mixer_ctl(codec, "Master Playback Volume")) {
  err = snd_hda_add_vmaster(codec, "Master Playback Volume",
       spec->vmaster_tlv, slave_pfxs,
       "Playback Volume");
  if (err < 0)
   return err;
 }
 if (!spec->no_analog && !spec->suppress_vmaster &&
     !snd_hda_find_mixer_ctl(codec, "Master Playback Switch")) {
  err = __snd_hda_add_vmaster(codec, "Master Playback Switch",
         ((void*)0), slave_pfxs,
         "Playback Switch",
         1, &spec->vmaster_mute.sw_kctl);
  if (err < 0)
   return err;
  if (spec->vmaster_mute.hook) {
   snd_hda_add_vmaster_hook(codec, &spec->vmaster_mute,
       spec->vmaster_mute_enum);
   snd_hda_sync_vmaster_hook(&spec->vmaster_mute);
  }
 }

 free_kctls(spec);

 err = snd_hda_jack_add_kctls(codec, &spec->autocfg);
 if (err < 0)
  return err;

 return 0;
}
