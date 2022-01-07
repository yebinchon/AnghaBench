
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {scalar_t__ codec_type; TYPE_1__ gen; } ;
struct hda_codec {int dummy; } ;


 int ENOMEM ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 scalar_t__ VT1802 ;
 int add_secret_dac_path (struct hda_codec*) ;
 int fix_vt1802_connections (struct hda_codec*) ;
 int override_mic_boost (struct hda_codec*,int,int ,int,int) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int *,int ,int ) ;
 int via_fixups ;
 int via_free (struct hda_codec*) ;
 struct via_spec* via_new_spec (struct hda_codec*) ;
 int via_parse_auto_config (struct hda_codec*) ;
 int vt1802_init_verbs ;
 int vt2002P_init_verbs ;
 int vt2002p_fixups ;

__attribute__((used)) static int patch_vt2002P(struct hda_codec *codec)
{
 struct via_spec *spec;
 int err;


 spec = via_new_spec(codec);
 if (spec == ((void*)0))
  return -ENOMEM;

 spec->gen.mixer_nid = 0x21;
 override_mic_boost(codec, 0x2b, 0, 3, 40);
 override_mic_boost(codec, 0x29, 0, 3, 40);
 if (spec->codec_type == VT1802)
  fix_vt1802_connections(codec);
 add_secret_dac_path(codec);

 snd_hda_pick_fixup(codec, ((void*)0), vt2002p_fixups, via_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 if (spec->codec_type == VT1802)
  err = snd_hda_add_verbs(codec, vt1802_init_verbs);
 else
  err = snd_hda_add_verbs(codec, vt2002P_init_verbs);
 if (err < 0)
  goto error;


 err = via_parse_auto_config(codec);
 if (err < 0)
  goto error;

 return 0;

 error:
 via_free(codec);
 return err;
}
