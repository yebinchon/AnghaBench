
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int force_pin_prefix; } ;
struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct TYPE_2__ {int type; int pin; } ;


 int AUTO_PIN_MIC ;
 int check_mic_location_need (struct hda_codec*,struct auto_pin_cfg const*,int) ;
 char const* hda_get_input_pin_label (struct hda_codec*,TYPE_1__*,int ,int) ;

const char *hda_get_autocfg_input_label(struct hda_codec *codec,
     const struct auto_pin_cfg *cfg,
     int input)
{
 int type = cfg->inputs[input].type;
 int has_multiple_pins = 0;

 if ((input > 0 && cfg->inputs[input - 1].type == type) ||
     (input < cfg->num_inputs - 1 && cfg->inputs[input + 1].type == type))
  has_multiple_pins = 1;
 if (has_multiple_pins && type == AUTO_PIN_MIC)
  has_multiple_pins &= check_mic_location_need(codec, cfg, input);
 has_multiple_pins |= codec->force_pin_prefix;
 return hda_get_input_pin_label(codec, &cfg->inputs[input],
           cfg->inputs[input].pin,
           has_multiple_pins);
}
