
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCAP_IN ;
 unsigned int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static int is_input_pin(struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int pincap = snd_hda_query_pin_caps(codec, nid);
 return (pincap & AC_PINCAP_IN) != 0;
}
