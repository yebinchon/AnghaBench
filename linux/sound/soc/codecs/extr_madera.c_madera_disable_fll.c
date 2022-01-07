
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_fll {unsigned int base; struct madera* madera; } ;
struct madera {int type; int dev; int regmap; } ;



 unsigned int CS47L35_FLL_SYNCHRONISER_OFFS ;
 int MADERA_FLL1_ENA ;
 int MADERA_FLL1_FREERUN ;
 int MADERA_FLL1_SYNC_ENA ;
 unsigned int MADERA_FLL_CONTROL_1_OFFS ;
 unsigned int MADERA_FLL_SYNCHRONISER_1_OFFS ;
 unsigned int MADERA_FLL_SYNCHRONISER_OFFS ;
 int madera_fll_dbg (struct madera_fll*,char*) ;
 int madera_wait_for_fll (struct madera_fll*,int) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_update_bits (int ,unsigned int,int ,int ) ;
 int regmap_update_bits_check (int ,unsigned int,int ,int ,int*) ;

__attribute__((used)) static void madera_disable_fll(struct madera_fll *fll)
{
 struct madera *madera = fll->madera;
 unsigned int sync_base;
 bool change;

 switch (madera->type) {
 case 128:
  sync_base = fll->base + CS47L35_FLL_SYNCHRONISER_OFFS;
  break;
 default:
  sync_base = fll->base + MADERA_FLL_SYNCHRONISER_OFFS;
  break;
 }

 madera_fll_dbg(fll, "Disabling FLL\n");

 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_1_OFFS,
      MADERA_FLL1_FREERUN, MADERA_FLL1_FREERUN);
 regmap_update_bits_check(madera->regmap,
     fll->base + MADERA_FLL_CONTROL_1_OFFS,
     MADERA_FLL1_ENA, 0, &change);
 regmap_update_bits(madera->regmap,
      sync_base + MADERA_FLL_SYNCHRONISER_1_OFFS,
      MADERA_FLL1_SYNC_ENA, 0);
 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_1_OFFS,
      MADERA_FLL1_FREERUN, 0);

 madera_wait_for_fll(fll, 0);

 if (change)
  pm_runtime_put_autosuspend(madera->dev);
}
