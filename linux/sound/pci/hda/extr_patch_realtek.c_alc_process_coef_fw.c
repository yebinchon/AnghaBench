
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
struct coef_fw {unsigned short mask; int val; int idx; scalar_t__ nid; } ;


 int alc_update_coefex_idx (struct hda_codec*,scalar_t__,int ,unsigned short,int ) ;
 int alc_write_coefex_idx (struct hda_codec*,scalar_t__,int ,int ) ;

__attribute__((used)) static void alc_process_coef_fw(struct hda_codec *codec,
    const struct coef_fw *fw)
{
 for (; fw->nid; fw++) {
  if (fw->mask == (unsigned short)-1)
   alc_write_coefex_idx(codec, fw->nid, fw->idx, fw->val);
  else
   alc_update_coefex_idx(codec, fw->nid, fw->idx,
           fw->mask, fw->val);
 }
}
