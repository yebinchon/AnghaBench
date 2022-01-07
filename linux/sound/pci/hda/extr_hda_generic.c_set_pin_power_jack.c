
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int power_save_node; } ;
typedef int hda_nid_t ;


 int detect_pin_state (struct hda_codec*,int ) ;
 int set_path_power (struct hda_codec*,int ,int,int) ;

__attribute__((used)) static hda_nid_t set_pin_power_jack(struct hda_codec *codec, hda_nid_t pin,
        int power)
{
 bool on;

 if (!codec->power_save_node)
  return 0;

 on = detect_pin_state(codec, pin);

 if (power >= 0 && on != power)
  return 0;
 return set_path_power(codec, pin, on, -1);
}
