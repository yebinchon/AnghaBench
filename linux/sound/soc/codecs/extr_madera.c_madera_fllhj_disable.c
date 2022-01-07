
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_fll {scalar_t__ base; struct madera* madera; } ;
struct madera {int dev; int regmap; } ;


 int MADERA_FLL1_CTRL_UPD_MASK ;
 int MADERA_FLL1_ENA_MASK ;
 int MADERA_FLL1_HOLD_MASK ;
 int MADERA_FLL1_LOCKDET_MASK ;
 scalar_t__ MADERA_FLL_CONTROL_11_OFFS ;
 scalar_t__ MADERA_FLL_CONTROL_1_OFFS ;
 scalar_t__ MADERA_FLL_CONTROL_2_OFFS ;
 int madera_fll_dbg (struct madera_fll*,char*) ;
 int madera_wait_for_fll (struct madera_fll*,int) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int regmap_update_bits_check (int ,scalar_t__,int ,int ,int*) ;

__attribute__((used)) static int madera_fllhj_disable(struct madera_fll *fll)
{
 struct madera *madera = fll->madera;
 bool change;

 madera_fll_dbg(fll, "Disabling FLL\n");







 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_11_OFFS,
      MADERA_FLL1_LOCKDET_MASK, 0);
 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_1_OFFS,
      MADERA_FLL1_HOLD_MASK, MADERA_FLL1_HOLD_MASK);
 regmap_update_bits_check(madera->regmap,
     fll->base + MADERA_FLL_CONTROL_1_OFFS,
     MADERA_FLL1_ENA_MASK, 0, &change);

 madera_wait_for_fll(fll, 0);
 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_2_OFFS,
      MADERA_FLL1_CTRL_UPD_MASK, 0);

 if (change)
  pm_runtime_put_autosuspend(madera->dev);

 return 0;
}
