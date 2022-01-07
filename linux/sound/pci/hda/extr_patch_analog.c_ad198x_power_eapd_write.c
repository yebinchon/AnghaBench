
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int inv_eapd; } ;
typedef int hda_nid_t ;


 int AC_PINCAP_EAPD ;
 int AC_VERB_SET_EAPD_BTLENABLE ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static void ad198x_power_eapd_write(struct hda_codec *codec, hda_nid_t front,
    hda_nid_t hp)
{
 if (snd_hda_query_pin_caps(codec, front) & AC_PINCAP_EAPD)
  snd_hda_codec_write(codec, front, 0, AC_VERB_SET_EAPD_BTLENABLE,
       !codec->inv_eapd ? 0x00 : 0x02);
 if (snd_hda_query_pin_caps(codec, hp) & AC_PINCAP_EAPD)
  snd_hda_codec_write(codec, hp, 0, AC_VERB_SET_EAPD_BTLENABLE,
       !codec->inv_eapd ? 0x00 : 0x02);
}
