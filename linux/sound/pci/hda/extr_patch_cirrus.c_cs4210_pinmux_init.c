
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct cs_spec* spec; } ;
struct cs_spec {scalar_t__ sense_b; scalar_t__ gpio_mask; } ;


 unsigned int AC_DEFCFG_PORT_CONN ;
 unsigned int AC_DEFCFG_PORT_CONN_SHIFT ;
 unsigned int AC_JACK_PORT_NONE ;
 int CS421X_DMIC_PIN_NID ;
 int CS421X_IDX_DEV_CFG ;
 unsigned int cs_vendor_coef_get (struct hda_codec*,int ) ;
 int cs_vendor_coef_set (struct hda_codec*,int ,unsigned int) ;
 scalar_t__ is_active_pin (struct hda_codec*,int ) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_codec_set_pincfg (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static void cs4210_pinmux_init(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;
 unsigned int def_conf, coef;


 coef = cs_vendor_coef_get(codec, CS421X_IDX_DEV_CFG);

 if (spec->gpio_mask)
  coef |= 0x0008;
 else
  coef &= ~0x0008;

 if (spec->sense_b)
  coef |= 0x0010;
 else
  coef &= ~0x0010;

 cs_vendor_coef_set(codec, CS421X_IDX_DEV_CFG, coef);

 if ((spec->gpio_mask || spec->sense_b) &&
     is_active_pin(codec, CS421X_DMIC_PIN_NID)) {




  def_conf = snd_hda_codec_get_pincfg(codec, CS421X_DMIC_PIN_NID);
  def_conf &= ~AC_DEFCFG_PORT_CONN;
  def_conf |= (AC_JACK_PORT_NONE << AC_DEFCFG_PORT_CONN_SHIFT);
  snd_hda_codec_set_pincfg(codec, CS421X_DMIC_PIN_NID, def_conf);
 }
}
