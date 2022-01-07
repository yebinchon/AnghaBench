
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_fll {int sync_src; unsigned int sync_freq; } ;


 int madera_apply_fll (struct madera_fll*) ;

int madera_set_fll_syncclk(struct madera_fll *fll, int source,
      unsigned int fref, unsigned int fout)
{






 if (fll->sync_src == source && fll->sync_freq == fref)
  return 0;

 fll->sync_src = source;
 fll->sync_freq = fref;

 return madera_apply_fll(fll);
}
