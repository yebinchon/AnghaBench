
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct madera_fll {int fout; TYPE_1__* madera; } ;
struct TYPE_2__ {int type; int rev; } ;





 int madera_find_main_fratio (unsigned int,int ,int*) ;
 int madera_find_sync_fratio (unsigned int,int*) ;

__attribute__((used)) static int madera_find_fratio(struct madera_fll *fll, unsigned int fref,
         bool sync, int *fratio)
{
 switch (fll->madera->type) {
 case 130:
  switch (fll->madera->rev) {
  case 0:

   return madera_find_sync_fratio(fref, fratio);
  default:
   if (sync)
    return madera_find_sync_fratio(fref, fratio);
   else
    return madera_find_main_fratio(fref,
              fll->fout,
              fratio);
  }
  break;
 case 129:
 case 128:

  return madera_find_sync_fratio(fref, fratio);
 default:
  if (sync)
   return madera_find_sync_fratio(fref, fratio);
  else
   return madera_find_main_fratio(fref, fll->fout, fratio);
 }
}
