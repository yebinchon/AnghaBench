
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_fll {scalar_t__ fout; } ;


 int madera_disable_fll (struct madera_fll*) ;
 int madera_enable_fll (struct madera_fll*) ;

__attribute__((used)) static int madera_apply_fll(struct madera_fll *fll)
{
 if (fll->fout) {
  return madera_enable_fll(fll);
 } else {
  madera_disable_fll(fll);
  return 0;
 }
}
