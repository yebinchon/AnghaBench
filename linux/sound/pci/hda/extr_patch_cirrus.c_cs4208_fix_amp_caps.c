
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_AMPCAP_OFFSET ;
 int HDA_INPUT ;
 unsigned int query_amp_caps (struct hda_codec*,int ,int ) ;
 int snd_hda_override_amp_caps (struct hda_codec*,int ,int ,unsigned int) ;

__attribute__((used)) static void cs4208_fix_amp_caps(struct hda_codec *codec, hda_nid_t adc)
{
 unsigned int caps;

 caps = query_amp_caps(codec, adc, HDA_INPUT);
 caps &= ~(AC_AMPCAP_OFFSET);
 caps |= 0x02;
 snd_hda_override_amp_caps(codec, adc, HDA_INPUT, caps);
}
