
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ afg; scalar_t__ mfg; } ;
struct hda_codec {TYPE_1__ core; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_PINCAP_EAPD ;
 unsigned int AC_PWRST_D0 ;
 unsigned int AC_PWRST_D3 ;
 int AC_VERB_GET_EAPD_BTLENABLE ;
 scalar_t__ AC_WID_PIN ;
 int get_wcaps (struct hda_codec*,scalar_t__) ;
 scalar_t__ get_wcaps_type (int ) ;
 int snd_hda_codec_read (struct hda_codec*,scalar_t__,int ,int ,int ) ;
 int snd_hda_query_pin_caps (struct hda_codec*,scalar_t__) ;

unsigned int snd_hda_codec_eapd_power_filter(struct hda_codec *codec,
          hda_nid_t nid,
          unsigned int power_state)
{
 if (nid == codec->core.afg || nid == codec->core.mfg)
  return power_state;
 if (power_state == AC_PWRST_D3 &&
     get_wcaps_type(get_wcaps(codec, nid)) == AC_WID_PIN &&
     (snd_hda_query_pin_caps(codec, nid) & AC_PINCAP_EAPD)) {
  int eapd = snd_hda_codec_read(codec, nid, 0,
           AC_VERB_GET_EAPD_BTLENABLE, 0);
  if (eapd & 0x02)
   return AC_PWRST_D0;
 }
 return power_state;
}
