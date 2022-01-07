
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef scalar_t__ hda_nid_t ;
typedef int hda_jack_callback_fn ;


 scalar_t__ is_jack_detectable (struct hda_codec*,scalar_t__ const) ;
 int pin_power_down_callback ;
 int pin_power_up_callback ;
 int set_path_power (struct hda_codec*,scalar_t__ const,int,int) ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,scalar_t__ const,int ) ;

__attribute__((used)) static void add_pin_power_ctls(struct hda_codec *codec, int num_pins,
          const hda_nid_t *pins, bool on)
{
 int i;
 hda_jack_callback_fn cb =
  on ? pin_power_up_callback : pin_power_down_callback;

 for (i = 0; i < num_pins && pins[i]; i++) {
  if (is_jack_detectable(codec, pins[i]))
   snd_hda_jack_detect_enable_callback(codec, pins[i], cb);
  else
   set_path_power(codec, pins[i], 1, -1);
 }
}
