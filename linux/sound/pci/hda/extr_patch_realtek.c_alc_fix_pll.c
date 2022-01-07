
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int pll_coef_bit; int pll_coef_idx; scalar_t__ pll_nid; } ;


 int alc_update_coefex_idx (struct hda_codec*,scalar_t__,int ,int,int ) ;

__attribute__((used)) static void alc_fix_pll(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 if (spec->pll_nid)
  alc_update_coefex_idx(codec, spec->pll_nid, spec->pll_coef_idx,
          1 << spec->pll_coef_bit, 0);
}
