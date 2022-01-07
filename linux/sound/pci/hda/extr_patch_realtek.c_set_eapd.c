
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PINCAP_EAPD ;
 int AC_VERB_SET_EAPD_BTLENABLE ;
 scalar_t__ AC_WID_PIN ;
 int get_wcaps (struct hda_codec*,int ) ;
 scalar_t__ get_wcaps_type (int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;
 int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

__attribute__((used)) static void set_eapd(struct hda_codec *codec, hda_nid_t nid, int on)
{
 if (get_wcaps_type(get_wcaps(codec, nid)) != AC_WID_PIN)
  return;
 if (snd_hda_query_pin_caps(codec, nid) & AC_PINCAP_EAPD)
  snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_EAPD_BTLENABLE,
        on ? 2 : 0);
}
