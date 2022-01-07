
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_fll {int ref_src; unsigned int ref_freq; unsigned int fout; } ;


 int EINVAL ;
 int madera_fllhj_disable (struct madera_fll*) ;
 int madera_fllhj_enable (struct madera_fll*) ;
 scalar_t__ madera_fllhj_validate (struct madera_fll*,unsigned int,unsigned int) ;

int madera_fllhj_set_refclk(struct madera_fll *fll, int source,
       unsigned int fin, unsigned int fout)
{
 int ret = 0;





 if (fout)
  fout /= 2;

 if (fll->ref_src == source && fll->ref_freq == fin &&
     fll->fout == fout)
  return 0;

 if (fin && fout && madera_fllhj_validate(fll, fin, fout))
  return -EINVAL;

 fll->ref_src = source;
 fll->ref_freq = fin;
 fll->fout = fout;

 if (fout)
  ret = madera_fllhj_enable(fll);
 else
  madera_fllhj_disable(fll);

 return ret;
}
