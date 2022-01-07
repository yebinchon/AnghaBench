
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int single_adc_amp; int spdif_status_reset; int patch_ops; struct alc_spec* spec; } ;
struct TYPE_2__ {int own_eapd_ctl; int mixer_nid; } ;
struct alc_spec {TYPE_1__ gen; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alc_codec_rename_from_preset (struct hda_codec*) ;
 int alc_patch_ops ;
 int kfree (struct alc_spec*) ;
 struct alc_spec* kzalloc (int,int ) ;
 int snd_hda_gen_spec_init (TYPE_1__*) ;

__attribute__((used)) static int alc_alloc_spec(struct hda_codec *codec, hda_nid_t mixer_nid)
{
 struct alc_spec *spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 int err;

 if (!spec)
  return -ENOMEM;
 codec->spec = spec;
 snd_hda_gen_spec_init(&spec->gen);
 spec->gen.mixer_nid = mixer_nid;
 spec->gen.own_eapd_ctl = 1;
 codec->single_adc_amp = 1;

 codec->spdif_status_reset = 1;
 codec->patch_ops = alc_patch_ops;

 err = alc_codec_rename_from_preset(codec);
 if (err < 0) {
  kfree(spec);
  return err;
 }
 return 0;
}
