
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_callback {scalar_t__ nid; } ;
struct hda_codec {int dummy; } ;


 int set_pin_power_jack (struct hda_codec*,scalar_t__,int) ;
 int sync_power_state_change (struct hda_codec*,int ) ;

__attribute__((used)) static void pin_power_callback(struct hda_codec *codec,
          struct hda_jack_callback *jack,
          bool on)
{
 if (jack && jack->nid)
  sync_power_state_change(codec,
     set_pin_power_jack(codec, jack->nid, on));
}
