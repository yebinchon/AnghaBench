
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int alc_read_coefex_idx (struct hda_codec*,int ,unsigned int) ;
 int alc_write_coefex_idx (struct hda_codec*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void alc_update_coefex_idx(struct hda_codec *codec, hda_nid_t nid,
      unsigned int coef_idx, unsigned int mask,
      unsigned int bits_set)
{
 unsigned int val = alc_read_coefex_idx(codec, nid, coef_idx);

 if (val != -1)
  alc_write_coefex_idx(codec, nid, coef_idx,
         (val & ~mask) | bits_set);
}
