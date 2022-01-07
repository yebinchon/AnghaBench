
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int jackpoll_interval; scalar_t__ no_jack_detect; } ;
typedef int hda_nid_t ;


 int AC_DEFCFG_MISC_NO_PRESENCE ;
 int AC_PINCAP_PRES_DETECT ;
 int AC_WCAP_UNSOL_CAP ;
 int get_defcfg_misc (int ) ;
 int get_wcaps (struct hda_codec*,int ) ;
 int snd_hda_codec_get_pincfg (struct hda_codec*,int ) ;
 int snd_hda_query_pin_caps (struct hda_codec*,int ) ;

bool is_jack_detectable(struct hda_codec *codec, hda_nid_t nid)
{
 if (codec->no_jack_detect)
  return 0;
 if (!(snd_hda_query_pin_caps(codec, nid) & AC_PINCAP_PRES_DETECT))
  return 0;
 if (get_defcfg_misc(snd_hda_codec_get_pincfg(codec, nid)) &
      AC_DEFCFG_MISC_NO_PRESENCE)
  return 0;
 if (!(get_wcaps(codec, nid) & AC_WCAP_UNSOL_CAP) &&
     !codec->jackpoll_interval)
  return 0;
 return 1;
}
