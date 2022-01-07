
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {scalar_t__ const* slave_dig_outs; } ;
typedef scalar_t__ const hda_nid_t ;


 int snd_hda_codec_cleanup_stream (struct hda_codec*,scalar_t__ const) ;

__attribute__((used)) static void cleanup_dig_out_stream(struct hda_codec *codec, hda_nid_t nid)
{
 snd_hda_codec_cleanup_stream(codec, nid);
 if (codec->slave_dig_outs) {
  const hda_nid_t *d;
  for (d = codec->slave_dig_outs; *d; d++)
   snd_hda_codec_cleanup_stream(codec, *d);
 }
}
