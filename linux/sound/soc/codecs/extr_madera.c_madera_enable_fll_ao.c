
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg_sequence {unsigned int def; scalar_t__ reg; } ;
struct madera_fll {unsigned int ref_src; scalar_t__ base; struct madera* madera; } ;
struct madera {int regmap; int dev; } ;


 scalar_t__ MADERA_FLLAO_CONTROL_1_OFFS ;
 scalar_t__ MADERA_FLLAO_CONTROL_6 ;
 int MADERA_FLL_AO_ENA ;
 int MADERA_FLL_AO_HOLD ;
 unsigned int MADERA_FLL_AO_REFCLK_SRC_MASK ;
 unsigned int MADERA_FLL_AO_REFCLK_SRC_SHIFT ;
 int madera_fll_dbg (struct madera_fll*,char*,char*) ;
 int madera_is_enabled_fll (struct madera_fll*,scalar_t__) ;
 int madera_wait_for_fll (struct madera_fll*,int) ;
 int pm_runtime_get_sync (int ) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int regmap_write (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static int madera_enable_fll_ao(struct madera_fll *fll,
    const struct reg_sequence *patch,
    unsigned int patch_size)
{
 struct madera *madera = fll->madera;
 int already_enabled = madera_is_enabled_fll(fll, fll->base);
 unsigned int val;
 int i;

 if (already_enabled < 0)
  return already_enabled;

 if (!already_enabled)
  pm_runtime_get_sync(madera->dev);

 madera_fll_dbg(fll, "Enabling FLL_AO, initially %s\n",
         already_enabled ? "enabled" : "disabled");


 regmap_update_bits(fll->madera->regmap,
      fll->base + MADERA_FLLAO_CONTROL_1_OFFS,
      MADERA_FLL_AO_HOLD, MADERA_FLL_AO_HOLD);

 for (i = 0; i < patch_size; i++) {
  val = patch[i].def;


  if (patch[i].reg == MADERA_FLLAO_CONTROL_6) {
   val &= ~MADERA_FLL_AO_REFCLK_SRC_MASK;
   val |= (fll->ref_src << MADERA_FLL_AO_REFCLK_SRC_SHIFT)
    & MADERA_FLL_AO_REFCLK_SRC_MASK;
  }

  regmap_write(madera->regmap, patch[i].reg, val);
 }

 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLLAO_CONTROL_1_OFFS,
      MADERA_FLL_AO_ENA, MADERA_FLL_AO_ENA);


 regmap_update_bits(madera->regmap,
      fll->base + MADERA_FLLAO_CONTROL_1_OFFS,
      MADERA_FLL_AO_HOLD, 0);

 if (!already_enabled)
  madera_wait_for_fll(fll, 1);

 return 0;
}
