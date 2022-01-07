
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_pincfg {int target; } ;
struct hda_codec {int init_pins; } ;
typedef int hda_nid_t ;


 struct hda_pincfg* look_up_pincfg (struct hda_codec*,int *,int ) ;

int snd_hda_codec_get_pin_target(struct hda_codec *codec, hda_nid_t nid)
{
 struct hda_pincfg *pin;

 pin = look_up_pincfg(codec, &codec->init_pins, nid);
 if (!pin)
  return 0;
 return pin->target;
}
