
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mixer_nid; int suppress_auto_mic; int auto_mute_via_amp; } ;
struct via_spec {int vt1708_jack_detect; TYPE_2__ gen; } ;
struct TYPE_3__ {int build_pcms; int build_controls; } ;
struct hda_codec {scalar_t__ jackpoll_interval; TYPE_1__ patch_ops; } ;


 int ENOMEM ;
 int VT1708_CD_PIN_NID ;
 int VT1708_HP_PIN_NID ;
 scalar_t__ msecs_to_jiffies (int) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_gen_add_kctl (TYPE_2__*,int *,int *) ;
 int via_free (struct hda_codec*) ;
 struct via_spec* via_new_spec (struct hda_codec*) ;
 int via_parse_auto_config (struct hda_codec*) ;
 int vt1708_build_controls ;
 int vt1708_build_pcms ;
 int vt1708_init_verbs ;
 int vt1708_jack_detect_ctl ;
 int vt1708_set_pinconfig_connect (struct hda_codec*,int ) ;

__attribute__((used)) static int patch_vt1708(struct hda_codec *codec)
{
 struct via_spec *spec;
 int err;


 spec = via_new_spec(codec);
 if (spec == ((void*)0))
  return -ENOMEM;


 codec->patch_ops.build_controls = vt1708_build_controls;
 codec->patch_ops.build_pcms = vt1708_build_pcms;
 spec->gen.mixer_nid = 0x17;


 codec->jackpoll_interval = msecs_to_jiffies(100);
 spec->vt1708_jack_detect = 1;



 spec->gen.suppress_auto_mic = 1;

 spec->gen.auto_mute_via_amp = 1;


 vt1708_set_pinconfig_connect(codec, VT1708_HP_PIN_NID);
 vt1708_set_pinconfig_connect(codec, VT1708_CD_PIN_NID);

 err = snd_hda_add_verbs(codec, vt1708_init_verbs);
 if (err < 0)
  goto error;


 err = via_parse_auto_config(codec);
 if (err < 0)
  goto error;


 if (!snd_hda_gen_add_kctl(&spec->gen, ((void*)0), &vt1708_jack_detect_ctl)) {
  err = -ENOMEM;
  goto error;
 }


 codec->jackpoll_interval = 0;

 return 0;

 error:
 via_free(codec);
 return err;
}
