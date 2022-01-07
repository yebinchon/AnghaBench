
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int core; int preset; scalar_t__ probe_id; } ;


 scalar_t__ HDA_CODEC_ID_GENERIC ;
 int codec_bind_generic (struct hda_codec*) ;
 int codec_bind_module (struct hda_codec*) ;
 int codec_err (struct hda_codec*,char*) ;
 scalar_t__ is_generic_config (struct hda_codec*) ;
 int snd_hdac_device_register (int *) ;
 int snd_hdac_device_unregister (int *) ;

int snd_hda_codec_configure(struct hda_codec *codec)
{
 int err;

 if (is_generic_config(codec))
  codec->probe_id = HDA_CODEC_ID_GENERIC;
 else
  codec->probe_id = 0;

 err = snd_hdac_device_register(&codec->core);
 if (err < 0)
  return err;

 if (!codec->preset)
  codec_bind_module(codec);
 if (!codec->preset) {
  err = codec_bind_generic(codec);
  if (err < 0) {
   codec_err(codec, "Unable to bind the codec\n");
   goto error;
  }
 }

 return 0;

 error:
 snd_hdac_device_unregister(&codec->core);
 return err;
}
