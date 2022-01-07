
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_AMPCAP_NUM_STEPS ;
 unsigned int AC_AMPCAP_NUM_STEPS_SHIFT ;
 unsigned int query_amp_caps (struct hda_codec*,int ,int) ;

__attribute__((used)) static u32 get_amp_max_value(struct hda_codec *codec, hda_nid_t nid, int dir,
        unsigned int ofs)
{
 u32 caps = query_amp_caps(codec, nid, dir);

 caps = (caps & AC_AMPCAP_NUM_STEPS) >> AC_AMPCAP_NUM_STEPS_SHIFT;
 if (ofs < caps)
  caps -= ofs;
 return caps;
}
