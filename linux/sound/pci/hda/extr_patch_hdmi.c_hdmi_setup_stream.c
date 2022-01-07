
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* pin_hbr_setup ) (struct hda_codec*,int ,scalar_t__) ;} ;
struct hdmi_spec {TYPE_1__ ops; } ;
struct hda_codec {struct hdmi_spec* spec; } ;
typedef int hda_nid_t ;


 unsigned int AC_DIG3_ICT ;
 int AC_VERB_GET_DIGI_CONVERT_1 ;
 int AC_VERB_SET_DIGI_CONVERT_3 ;
 int codec_dbg (struct hda_codec*,char*) ;
 scalar_t__ is_haswell_plus (struct hda_codec*) ;
 scalar_t__ is_hbr_format (int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_setup_stream (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int stub1 (struct hda_codec*,int ,scalar_t__) ;

__attribute__((used)) static int hdmi_setup_stream(struct hda_codec *codec, hda_nid_t cvt_nid,
         hda_nid_t pin_nid, u32 stream_tag, int format)
{
 struct hdmi_spec *spec = codec->spec;
 unsigned int param;
 int err;

 err = spec->ops.pin_hbr_setup(codec, pin_nid, is_hbr_format(format));

 if (err) {
  codec_dbg(codec, "hdmi_setup_stream: HBR is not supported\n");
  return err;
 }

 if (is_haswell_plus(codec)) {






  param = snd_hda_codec_read(codec, cvt_nid, 0,
        AC_VERB_GET_DIGI_CONVERT_1, 0);

  param = (param >> 16) & ~(AC_DIG3_ICT);


  if (is_hbr_format(format))
   param |= 0x1;

  snd_hda_codec_write(codec, cvt_nid, 0,
        AC_VERB_SET_DIGI_CONVERT_3, param);
 }

 snd_hda_codec_setup_stream(codec, cvt_nid, stream_tag, 0, format);
 return 0;
}
