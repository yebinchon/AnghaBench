
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int patch_ops; } ;
struct cs_spec {int dummy; } ;


 int CS4213_VENDOR_NID ;
 int ENOMEM ;
 int cs421x_parse_auto_config (struct hda_codec*) ;
 int cs421x_patch_ops ;
 struct cs_spec* cs_alloc_spec (struct hda_codec*,int ) ;
 int cs_free (struct hda_codec*) ;

__attribute__((used)) static int patch_cs4213(struct hda_codec *codec)
{
 struct cs_spec *spec;
 int err;

 spec = cs_alloc_spec(codec, CS4213_VENDOR_NID);
 if (!spec)
  return -ENOMEM;

 codec->patch_ops = cs421x_patch_ops;

 err = cs421x_parse_auto_config(codec);
 if (err < 0)
  goto error;

 return 0;

 error:
 cs_free(codec);
 return err;
}
