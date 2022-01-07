
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct hda_gen_spec {int am_num_entries; int auto_mic; int num_adc_nids; TYPE_2__* am_entry; int * cur_mux; int line_in_auto_switch; scalar_t__ suppress_auto_mic; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_4__ {unsigned int attr; int pin; int idx; } ;
struct TYPE_3__ {int type; int pin; } ;


 int AUTO_PIN_LINE_IN ;
 int AUTO_PIN_MIC ;


 int MAX_AUTO_MIC_PINS ;
 int auto_mic_check_imux (struct hda_codec*) ;
 int codec_dbg (struct hda_codec*,char*,int ,int ,int ) ;
 int compare_attr ;
 int is_jack_detectable (struct hda_codec*,int ) ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 unsigned int snd_hda_get_input_pin_attr (unsigned int) ;
 int sort (TYPE_2__*,int,int,int ,int *) ;

__attribute__((used)) static int check_auto_mic_availability(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 unsigned int types;
 int i, num_pins;

 if (spec->suppress_auto_mic)
  return 0;

 types = 0;
 num_pins = 0;
 for (i = 0; i < cfg->num_inputs; i++) {
  hda_nid_t nid = cfg->inputs[i].pin;
  unsigned int attr;
  attr = snd_hda_codec_get_pincfg(codec, nid);
  attr = snd_hda_get_input_pin_attr(attr);
  if (types & (1 << attr))
   return 0;
  switch (attr) {
  case 129:
   if (cfg->inputs[i].type != AUTO_PIN_MIC)
    return 0;
   break;
  case 128:
   return 0;
  default:
   if (cfg->inputs[i].type > AUTO_PIN_LINE_IN)
    return 0;
   if (!spec->line_in_auto_switch &&
       cfg->inputs[i].type != AUTO_PIN_MIC)
    return 0;
   if (!is_jack_detectable(codec, nid))
    return 0;
   break;
  }
  if (num_pins >= MAX_AUTO_MIC_PINS)
   return 0;
  types |= (1 << attr);
  spec->am_entry[num_pins].pin = nid;
  spec->am_entry[num_pins].attr = attr;
  num_pins++;
 }

 if (num_pins < 2)
  return 0;

 spec->am_num_entries = num_pins;



 sort(spec->am_entry, num_pins, sizeof(spec->am_entry[0]),
      compare_attr, ((void*)0));

 if (!auto_mic_check_imux(codec))
  return 0;

 spec->auto_mic = 1;
 spec->num_adc_nids = 1;
 spec->cur_mux[0] = spec->am_entry[0].idx;
 codec_dbg(codec, "Enable auto-mic switch on NID 0x%x/0x%x/0x%x\n",
      spec->am_entry[0].pin,
      spec->am_entry[1].pin,
      spec->am_entry[2].pin);

 return 0;
}
