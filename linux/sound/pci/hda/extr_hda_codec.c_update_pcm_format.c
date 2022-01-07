
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_cvt_setup {int format_id; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_STREAM_FORMAT ;
 int AC_VERB_SET_STREAM_FORMAT ;
 int msleep (int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void update_pcm_format(struct hda_codec *codec, struct hda_cvt_setup *p,
         hda_nid_t nid, int format)
{
 unsigned int oldval;

 if (p->format_id != format) {
  oldval = snd_hda_codec_read(codec, nid, 0,
         AC_VERB_GET_STREAM_FORMAT, 0);
  if (oldval != format) {
   msleep(1);
   snd_hda_codec_write(codec, nid, 0,
         AC_VERB_SET_STREAM_FORMAT,
         format);
  }
  p->format_id = format;
 }
}
