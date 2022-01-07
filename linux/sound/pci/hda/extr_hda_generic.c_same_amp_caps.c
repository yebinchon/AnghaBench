
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int get_wcaps (struct hda_codec*,int ) ;
 scalar_t__ query_amp_caps (struct hda_codec*,int ,int) ;

__attribute__((used)) static bool same_amp_caps(struct hda_codec *codec, hda_nid_t nid1,
     hda_nid_t nid2, int dir)
{
 if (!(get_wcaps(codec, nid1) & (1 << (dir + 1))))
  return !(get_wcaps(codec, nid2) & (1 << (dir + 1)));
 return (query_amp_caps(codec, nid1, dir) ==
  query_amp_caps(codec, nid2, dir));
}
