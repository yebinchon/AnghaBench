
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int dmic_ctl; int * input_pins; } ;


 int CONTROL_FLAG_DMIC ;
 unsigned int FLOAT_ONE ;
 unsigned int FLOAT_TWO ;
 int VENDOR_CHIPIO_DMIC_CTL_SET ;
 int ca0132_set_vipsource (struct hda_codec*,int) ;
 int chipio_set_control_flag (struct hda_codec*,int ,int) ;
 int codec_dbg (struct hda_codec*,char*,int) ;
 int dspio_set_uint_param (struct hda_codec*,int,int,unsigned int) ;
 int resume_mic1 (struct hda_codec*,unsigned int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 unsigned int stop_mic1 (struct hda_codec*) ;

__attribute__((used)) static void ca0132_set_dmic(struct hda_codec *codec, int enable)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int tmp;
 u8 val;
 unsigned int oldval;

 codec_dbg(codec, "ca0132_set_dmic: enable=%d\n", enable);

 oldval = stop_mic1(codec);
 ca0132_set_vipsource(codec, 0);
 if (enable) {

  tmp = FLOAT_TWO;
  dspio_set_uint_param(codec, 0x80, 0x00, tmp);

  val = spec->dmic_ctl;
  val |= 0x80;
  snd_hda_codec_write(codec, spec->input_pins[0], 0,
        VENDOR_CHIPIO_DMIC_CTL_SET, val);

  if (!(spec->dmic_ctl & 0x20))
   chipio_set_control_flag(codec, CONTROL_FLAG_DMIC, 1);
 } else {

  tmp = FLOAT_ONE;
  dspio_set_uint_param(codec, 0x80, 0x00, tmp);

  val = spec->dmic_ctl;

  val &= 0x5f;
  snd_hda_codec_write(codec, spec->input_pins[0], 0,
        VENDOR_CHIPIO_DMIC_CTL_SET, val);

  if (!(spec->dmic_ctl & 0x20))
   chipio_set_control_flag(codec, CONTROL_FLAG_DMIC, 0);
 }
 ca0132_set_vipsource(codec, 1);
 resume_mic1(codec, oldval);
}
