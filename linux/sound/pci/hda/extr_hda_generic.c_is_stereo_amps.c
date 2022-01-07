
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_WCAP_STEREO ;
 scalar_t__ AC_WID_AUD_MIX ;
 int HDA_INPUT ;
 unsigned int get_wcaps (struct hda_codec*,int ) ;
 scalar_t__ get_wcaps_type (unsigned int) ;
 scalar_t__ snd_hda_get_connections (struct hda_codec*,int ,int *,int) ;
 int snd_hda_get_num_conns (struct hda_codec*,int ) ;

__attribute__((used)) static bool is_stereo_amps(struct hda_codec *codec, hda_nid_t nid, int dir)
{
 unsigned int wcaps = get_wcaps(codec, nid);
 hda_nid_t conn;

 if (wcaps & AC_WCAP_STEREO)
  return 1;
 if (dir != HDA_INPUT || get_wcaps_type(wcaps) != AC_WID_AUD_MIX)
  return 0;
 if (snd_hda_get_num_conns(codec, nid) != 1)
  return 0;
 if (snd_hda_get_connections(codec, nid, &conn, 1) < 0)
  return 0;
 return !!(get_wcaps(codec, conn) & AC_WCAP_STEREO);
}
