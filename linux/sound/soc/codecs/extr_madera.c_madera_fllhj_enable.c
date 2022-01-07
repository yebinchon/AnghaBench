
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_fll {int ref_src; scalar_t__ base; int ref_freq; struct madera* madera; } ;
struct madera {int regmap; int dev; } ;


 int CS47L92_FLL1_REFCLK_SRC_MASK ;
 int CS47L92_FLL1_REFCLK_SRC_SHIFT ;
 int MADERA_FLL1_CTRL_UPD_MASK ;
 int MADERA_FLL1_ENA_MASK ;
 int MADERA_FLL1_HOLD_MASK ;
 int MADERA_FLL1_LOCKDET_MASK ;
 scalar_t__ MADERA_FLL_CONTROL_11_OFFS ;
 scalar_t__ MADERA_FLL_CONTROL_1_OFFS ;
 scalar_t__ MADERA_FLL_CONTROL_2_OFFS ;
 int madera_fll_dbg (struct madera_fll*,char*,char*) ;
 int madera_fll_err (struct madera_fll*,char*,int) ;
 int madera_fllhj_apply (struct madera_fll*,int ) ;
 int madera_is_enabled_fll (struct madera_fll*,scalar_t__) ;
 int madera_wait_for_fll (struct madera_fll*,int) ;
 int pm_runtime_get_sync (int ) ;
 int regmap_update_bits (int ,scalar_t__,int,int) ;

__attribute__((used)) static int madera_fllhj_enable(struct madera_fll *fll)
{
 struct madera *madera = fll->madera;
 int already_enabled = madera_is_enabled_fll(fll, fll->base);
 int ret;

 if (already_enabled < 0)
  return already_enabled;

 if (!already_enabled)
  pm_runtime_get_sync(madera->dev);

 madera_fll_dbg(fll, "Enabling FLL, initially %s\n",
         already_enabled ? "enabled" : "disabled");


 regmap_update_bits(fll->madera->regmap,
      fll->base + MADERA_FLL_CONTROL_1_OFFS,
      MADERA_FLL1_HOLD_MASK,
      MADERA_FLL1_HOLD_MASK);


 ret = madera_fllhj_apply(fll, fll->ref_freq);
 if (ret) {
  madera_fll_err(fll, "Failed to set FLL: %d\n", ret);
  goto out;
 }
 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_1_OFFS,
      CS47L92_FLL1_REFCLK_SRC_MASK,
      fll->ref_src << CS47L92_FLL1_REFCLK_SRC_SHIFT);

 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_1_OFFS,
      MADERA_FLL1_ENA_MASK,
      MADERA_FLL1_ENA_MASK);

out:
 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_11_OFFS,
      MADERA_FLL1_LOCKDET_MASK,
      MADERA_FLL1_LOCKDET_MASK);

 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_2_OFFS,
      MADERA_FLL1_CTRL_UPD_MASK,
      MADERA_FLL1_CTRL_UPD_MASK);


 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLL_CONTROL_1_OFFS,
      MADERA_FLL1_HOLD_MASK,
      0);

 if (!already_enabled)
  madera_wait_for_fll(fll, 1);

 return 0;
}
