
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;




 unsigned int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_get_input_pin_attr (unsigned int) ;

__attribute__((used)) static const char *check_output_pfx(struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int def_conf = snd_hda_codec_get_pincfg(codec, nid);
 int attr = snd_hda_get_input_pin_attr(def_conf);


 switch (attr) {
 case 129:
  return "Dock ";
 case 128:
  return "Front ";
 }
 return "";
}
