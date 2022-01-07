
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int dummy; } ;
struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct TYPE_2__ {int pin; } ;


 int INPUT_PIN_ATTR_NORMAL ;
 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_get_input_pin_attr (unsigned int) ;

__attribute__((used)) static int check_mic_location_need(struct hda_codec *codec,
       const struct auto_pin_cfg *cfg,
       int input)
{
 unsigned int defc;
 int i, attr, attr2;

 defc = snd_hda_codec_get_pincfg(codec, cfg->inputs[input].pin);
 attr = snd_hda_get_input_pin_attr(defc);

 if (attr <= INPUT_PIN_ATTR_NORMAL)
  return 1;

 attr = 0;
 for (i = 0; i < cfg->num_inputs; i++) {
  defc = snd_hda_codec_get_pincfg(codec, cfg->inputs[i].pin);
  attr2 = snd_hda_get_input_pin_attr(defc);
  if (attr2 >= INPUT_PIN_ATTR_NORMAL) {
   if (attr && attr != attr2)
    return 1;
   attr = attr2;
  }
 }
 return 0;
}
