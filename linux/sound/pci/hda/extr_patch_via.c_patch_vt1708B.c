
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {TYPE_1__ gen; } ;
struct hda_codec {int dummy; } ;


 int ENOMEM ;
 scalar_t__ VT1708BCE ;
 scalar_t__ get_codec_type (struct hda_codec*) ;
 int patch_vt1708S (struct hda_codec*) ;
 int via_free (struct hda_codec*) ;
 struct via_spec* via_new_spec (struct hda_codec*) ;
 int via_parse_auto_config (struct hda_codec*) ;

__attribute__((used)) static int patch_vt1708B(struct hda_codec *codec)
{
 struct via_spec *spec;
 int err;

 if (get_codec_type(codec) == VT1708BCE)
  return patch_vt1708S(codec);


 spec = via_new_spec(codec);
 if (spec == ((void*)0))
  return -ENOMEM;

 spec->gen.mixer_nid = 0x16;


 err = via_parse_auto_config(codec);
 if (err < 0)
  goto error;

 return 0;

 error:
 via_free(codec);
 return err;
}
