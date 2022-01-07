
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_AUDIO_WIDGET_CAP ;
 unsigned int AC_WCAP_STEREO ;
 scalar_t__ AC_WID_AUD_MIX ;
 int HDA_INPUT ;
 scalar_t__ get_wcaps_type (unsigned int) ;
 scalar_t__ snd_hda_get_raw_connections (struct hda_codec*,int ,int *,int) ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;

__attribute__((used)) static bool is_stereo_amps(struct hda_codec *codec, hda_nid_t nid,
      int dir, unsigned int wcaps, int indices)
{
 hda_nid_t conn;

 if (wcaps & AC_WCAP_STEREO)
  return 1;



 if (indices != 1 || dir != HDA_INPUT ||
     get_wcaps_type(wcaps) != AC_WID_AUD_MIX)
  return 0;

 if (snd_hda_get_raw_connections(codec, nid, &conn, 1) < 0)
  return 0;

 wcaps = snd_hda_param_read(codec, conn, AC_PAR_AUDIO_WIDGET_CAP);
 return !!(wcaps & AC_WCAP_STEREO);
}
