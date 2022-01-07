
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_AMPCAP_STEP_SIZE ;
 unsigned int AC_AMPCAP_STEP_SIZE_SHIFT ;
 int NID_PATH_BOOST_CTL ;
 int NID_PATH_VOL_CTL ;
 scalar_t__ is_ctl_associated (struct hda_codec*,int ,int,int,int ) ;
 int nid_has_volume (struct hda_codec*,int ,int) ;
 unsigned int query_amp_caps (struct hda_codec*,int ,int) ;

__attribute__((used)) static bool check_boost_vol(struct hda_codec *codec, hda_nid_t nid,
       int dir, int idx)
{
 unsigned int step;

 if (!nid_has_volume(codec, nid, dir) ||
     is_ctl_associated(codec, nid, dir, idx, NID_PATH_VOL_CTL) ||
     is_ctl_associated(codec, nid, dir, idx, NID_PATH_BOOST_CTL))
  return 0;

 step = (query_amp_caps(codec, nid, dir) & AC_AMPCAP_STEP_SIZE)
  >> AC_AMPCAP_STEP_SIZE_SHIFT;
 if (step < 0x20)
  return 0;
 return 1;
}
