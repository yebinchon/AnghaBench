
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct reg_sequence {int dummy; } ;
struct madera_fll {int ref_src; unsigned int ref_freq; unsigned int fout; } ;
struct TYPE_3__ {unsigned int fin; unsigned int fout; int patch_size; struct reg_sequence* patch; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int madera_disable_fll_ao (struct madera_fll*) ;
 int madera_enable_fll_ao (struct madera_fll*,struct reg_sequence const*,int) ;
 int madera_fll_dbg (struct madera_fll*,char*,unsigned int,unsigned int,int) ;
 int madera_fll_err (struct madera_fll*,char*) ;
 TYPE_1__* madera_fllao_settings ;

int madera_set_fll_ao_refclk(struct madera_fll *fll, int source,
        unsigned int fin, unsigned int fout)
{
 int ret = 0;
 const struct reg_sequence *patch = ((void*)0);
 int patch_size = 0;
 unsigned int i;

 if (fll->ref_src == source &&
     fll->ref_freq == fin && fll->fout == fout)
  return 0;

 madera_fll_dbg(fll, "Change FLL_AO refclk to fin=%u fout=%u source=%d\n",
         fin, fout, source);

 if (fout && (fll->ref_freq != fin || fll->fout != fout)) {
  for (i = 0; i < ARRAY_SIZE(madera_fllao_settings); i++) {
   if (madera_fllao_settings[i].fin == fin &&
       madera_fllao_settings[i].fout == fout)
    break;
  }

  if (i == ARRAY_SIZE(madera_fllao_settings)) {
   madera_fll_err(fll,
           "No matching configuration for FLL_AO\n");
   return -EINVAL;
  }

  patch = madera_fllao_settings[i].patch;
  patch_size = madera_fllao_settings[i].patch_size;
 }

 fll->ref_src = source;
 fll->ref_freq = fin;
 fll->fout = fout;

 if (fout)
  ret = madera_enable_fll_ao(fll, patch, patch_size);
 else
  madera_disable_fll_ao(fll);

 return ret;
}
