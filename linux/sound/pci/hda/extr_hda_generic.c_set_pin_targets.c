
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int set_pin_target (struct hda_codec*,int ,unsigned int,int) ;

__attribute__((used)) static void set_pin_targets(struct hda_codec *codec, int num_pins,
       hda_nid_t *pins, unsigned int val)
{
 int i;
 for (i = 0; i < num_pins; i++)
  set_pin_target(codec, pins[i], val, 0);
}
