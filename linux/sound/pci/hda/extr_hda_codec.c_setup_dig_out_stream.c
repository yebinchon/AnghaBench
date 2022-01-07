
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_spdif_out {int ctls; } ;
struct hda_codec {scalar_t__ const* slave_dig_outs; scalar_t__ spdif_status_reset; } ;
typedef scalar_t__ const hda_nid_t ;


 int AC_DIG1_ENABLE ;
 int AC_VERB_GET_STREAM_FORMAT ;
 scalar_t__ WARN_ON (int ) ;
 int set_dig_out_convert (struct hda_codec*,scalar_t__ const,int,int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,scalar_t__ const,int ,int ,int ) ;
 int snd_hda_codec_setup_stream (struct hda_codec*,scalar_t__ const,unsigned int,int ,unsigned int) ;
 struct hda_spdif_out* snd_hda_spdif_out_of_nid (struct hda_codec*,scalar_t__ const) ;

__attribute__((used)) static void setup_dig_out_stream(struct hda_codec *codec, hda_nid_t nid,
     unsigned int stream_tag, unsigned int format)
{
 struct hda_spdif_out *spdif;
 unsigned int curr_fmt;
 bool reset;

 spdif = snd_hda_spdif_out_of_nid(codec, nid);



 if (WARN_ON(spdif == ((void*)0)))
  return;

 curr_fmt = snd_hda_codec_read(codec, nid, 0,
          AC_VERB_GET_STREAM_FORMAT, 0);
 reset = codec->spdif_status_reset &&
  (spdif->ctls & AC_DIG1_ENABLE) &&
  curr_fmt != format;



 if (reset)
  set_dig_out_convert(codec, nid,
        spdif->ctls & ~AC_DIG1_ENABLE & 0xff,
        -1);
 snd_hda_codec_setup_stream(codec, nid, stream_tag, 0, format);
 if (codec->slave_dig_outs) {
  const hda_nid_t *d;
  for (d = codec->slave_dig_outs; *d; d++)
   snd_hda_codec_setup_stream(codec, *d, stream_tag, 0,
         format);
 }

 if (reset)
  set_dig_out_convert(codec, nid,
        spdif->ctls & 0xff, -1);
}
