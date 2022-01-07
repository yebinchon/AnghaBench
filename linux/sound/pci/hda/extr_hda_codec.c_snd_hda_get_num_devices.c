
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int core; int dp_mst; } ;
typedef int hda_nid_t ;


 unsigned int AC_DEV_LIST_LEN_MASK ;
 int AC_PAR_DEVLIST_LEN ;
 unsigned int AC_WCAP_DIGITAL ;
 scalar_t__ AC_WID_PIN ;
 unsigned int get_wcaps (struct hda_codec*,int ) ;
 scalar_t__ get_wcaps_type (unsigned int) ;
 unsigned int snd_hdac_read_parm_uncached (int *,int ,int ) ;

unsigned int snd_hda_get_num_devices(struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int wcaps = get_wcaps(codec, nid);
 unsigned int parm;

 if (!codec->dp_mst || !(wcaps & AC_WCAP_DIGITAL) ||
     get_wcaps_type(wcaps) != AC_WID_PIN)
  return 0;

 parm = snd_hdac_read_parm_uncached(&codec->core, nid, AC_PAR_DEVLIST_LEN);
 if (parm == -1)
  parm = 0;
 return parm & AC_DEV_LIST_LEN_MASK;
}
