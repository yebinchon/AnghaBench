
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;







 unsigned int AC_PINCAP_IN ;
 unsigned int AC_PINCAP_OUT ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static bool check_pincap_validity(struct hda_codec *codec, hda_nid_t pin,
      unsigned int dev)
{
 unsigned int pincap = snd_hda_query_pin_caps(codec, pin);


 if (!pincap)
  return 1;

 switch (dev) {
 case 130:
 case 128:
 case 131:
 case 129:
 case 132:
  return !!(pincap & AC_PINCAP_OUT);
 default:
  return !!(pincap & AC_PINCAP_IN);
 }
}
