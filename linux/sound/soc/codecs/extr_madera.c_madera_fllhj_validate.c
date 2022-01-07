
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_fll {unsigned int fout; } ;


 int EINVAL ;
 unsigned int MADERA_FLLHJ_MAX_THRESH ;
 unsigned int MADERA_FLL_MAX_REFDIV ;
 int madera_fll_err (struct madera_fll*,char*,...) ;

__attribute__((used)) static int madera_fllhj_validate(struct madera_fll *fll,
     unsigned int ref_in,
     unsigned int fout)
{
 if (fout && !ref_in) {
  madera_fll_err(fll, "fllout set without valid input clk\n");
  return -EINVAL;
 }

 if (fll->fout && fout != fll->fout) {
  madera_fll_err(fll, "Can't change output on active FLL\n");
  return -EINVAL;
 }

 if (ref_in / MADERA_FLL_MAX_REFDIV > MADERA_FLLHJ_MAX_THRESH) {
  madera_fll_err(fll, "Can't scale %dMHz to <=13MHz\n", ref_in);
  return -EINVAL;
 }

 return 0;
}
