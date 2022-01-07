
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int dummy; } ;
struct auto_pin_cfg {int dig_outs; int num_inputs; TYPE_1__* inputs; int * dig_out_pins; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int pin; } ;





 scalar_t__ AC_JACK_PORT_NONE ;


 int fill_audio_out_name (struct hda_codec*,int ,struct auto_pin_cfg const*,char*,char*,int,int*) ;
 scalar_t__ get_defcfg_connect (unsigned int) ;
 int get_defcfg_device (unsigned int) ;
 char* hda_get_autocfg_input_label (struct hda_codec*,struct auto_pin_cfg const*,int) ;
 char* hda_get_input_pin_label (struct hda_codec*,int *,int ,int) ;
 int is_hdmi_cfg (unsigned int) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int strlcpy (char*,char const*,int) ;

int snd_hda_get_pin_label(struct hda_codec *codec, hda_nid_t nid,
     const struct auto_pin_cfg *cfg,
     char *label, int maxlen, int *indexp)
{
 unsigned int def_conf = snd_hda_codec_get_pincfg(codec, nid);
 const char *name = ((void*)0);
 int i;
 bool hdmi;

 if (indexp)
  *indexp = 0;
 if (get_defcfg_connect(def_conf) == AC_JACK_PORT_NONE)
  return 0;

 switch (get_defcfg_device(def_conf)) {
 case 130:
  return fill_audio_out_name(codec, nid, cfg, "Line Out",
        label, maxlen, indexp);
 case 128:
  return fill_audio_out_name(codec, nid, cfg, "Speaker",
        label, maxlen, indexp);
 case 131:
  return fill_audio_out_name(codec, nid, cfg, "Headphone",
        label, maxlen, indexp);
 case 129:
 case 132:
  hdmi = is_hdmi_cfg(def_conf);
  name = hdmi ? "HDMI" : "SPDIF";
  if (cfg && indexp)
   for (i = 0; i < cfg->dig_outs; i++) {
    hda_nid_t pin = cfg->dig_out_pins[i];
    unsigned int c;
    if (pin == nid)
     break;
    c = snd_hda_codec_get_pincfg(codec, pin);
    if (hdmi == is_hdmi_cfg(c))
     (*indexp)++;
   }
  break;
 default:
  if (cfg) {
   for (i = 0; i < cfg->num_inputs; i++) {
    if (cfg->inputs[i].pin != nid)
     continue;
    name = hda_get_autocfg_input_label(codec, cfg, i);
    if (name)
     break;
   }
  }
  if (!name)
   name = hda_get_input_pin_label(codec, ((void*)0), nid, 1);
  break;
 }
 if (!name)
  return 0;
 strlcpy(label, name, maxlen);
 return 1;
}
