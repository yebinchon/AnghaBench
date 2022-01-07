
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int is_amdhdmi_rev3_or_later (struct hda_codec*) ;
 int snd_hdmi_get_eld_ati (struct hda_codec*,int ,unsigned char*,int*,int ) ;

__attribute__((used)) static int atihdmi_pin_get_eld(struct hda_codec *codec, hda_nid_t nid,
      unsigned char *buf, int *eld_size)
{

 return snd_hdmi_get_eld_ati(codec, nid, buf, eld_size,
        is_amdhdmi_rev3_or_later(codec));
}
