
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int get_wcaps (struct hda_codec*,int ) ;
 unsigned int query_amp_caps (struct hda_codec*,int ,int) ;

bool snd_hda_check_amp_caps(struct hda_codec *codec, hda_nid_t nid,
      int dir, unsigned int bits)
{
 if (!nid)
  return 0;
 if (get_wcaps(codec, nid) & (1 << (dir + 1)))
  if (query_amp_caps(codec, nid, dir) & bits)
   return 1;
 return 0;
}
