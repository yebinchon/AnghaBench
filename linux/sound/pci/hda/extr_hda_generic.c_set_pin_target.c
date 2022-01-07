
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int snd_hda_codec_set_pin_target (struct hda_codec*,int ,unsigned int) ;
 unsigned int snd_hda_correct_pin_ctl (struct hda_codec*,int ,unsigned int) ;
 int update_pin_ctl (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static void set_pin_target(struct hda_codec *codec, hda_nid_t pin,
      unsigned int val, bool do_write)
{
 if (!pin)
  return;
 val = snd_hda_correct_pin_ctl(codec, pin, val);
 snd_hda_codec_set_pin_target(codec, pin, val);
 if (do_write)
  update_pin_ctl(codec, pin, val);
}
