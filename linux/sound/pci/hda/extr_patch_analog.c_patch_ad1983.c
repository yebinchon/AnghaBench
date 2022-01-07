
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct ad198x_spec* spec; } ;
struct TYPE_2__ {int mixer_nid; int beep_nid; } ;
struct ad198x_spec {TYPE_1__ gen; } ;
typedef int hda_nid_t ;


 int ARRAY_SIZE (int*) ;
 int HDA_OUTPUT ;
 int ad1983_add_spdif_mux_ctl (struct hda_codec*) ;
 int ad198x_parse_auto_config (struct hda_codec*,int) ;
 int alloc_ad_spec (struct hda_codec*) ;
 int set_beep_amp (struct ad198x_spec*,int,int ,int ) ;
 int snd_hda_gen_free (struct hda_codec*) ;
 int snd_hda_override_conn_list (struct hda_codec*,int,int ,int*) ;

__attribute__((used)) static int patch_ad1983(struct hda_codec *codec)
{
 struct ad198x_spec *spec;
 static hda_nid_t conn_0c[] = { 0x08 };
 static hda_nid_t conn_0d[] = { 0x09 };
 int err;

 err = alloc_ad_spec(codec);
 if (err < 0)
  return err;
 spec = codec->spec;

 spec->gen.mixer_nid = 0x0e;
 spec->gen.beep_nid = 0x10;
 set_beep_amp(spec, 0x10, 0, HDA_OUTPUT);


 snd_hda_override_conn_list(codec, 0x0c, ARRAY_SIZE(conn_0c), conn_0c);
 snd_hda_override_conn_list(codec, 0x0d, ARRAY_SIZE(conn_0d), conn_0d);

 err = ad198x_parse_auto_config(codec, 0);
 if (err < 0)
  goto error;
 err = ad1983_add_spdif_mux_ctl(codec);
 if (err < 0)
  goto error;
 return 0;

 error:
 snd_hda_gen_free(codec);
 return err;
}
