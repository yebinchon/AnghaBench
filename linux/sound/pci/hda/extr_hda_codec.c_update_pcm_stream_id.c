
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_cvt_setup {int stream_tag; int channel_id; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_CONV ;
 int AC_VERB_SET_CHANNEL_STREAMID ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void update_pcm_stream_id(struct hda_codec *codec,
     struct hda_cvt_setup *p, hda_nid_t nid,
     u32 stream_tag, int channel_id)
{
 unsigned int oldval, newval;

 if (p->stream_tag != stream_tag || p->channel_id != channel_id) {
  oldval = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_CONV, 0);
  newval = (stream_tag << 4) | channel_id;
  if (oldval != newval)
   snd_hda_codec_write(codec, nid, 0,
         AC_VERB_SET_CHANNEL_STREAMID,
         newval);
  p->stream_tag = stream_tag;
  p->channel_id = channel_id;
 }
}
