
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_fll {scalar_t__ base; struct arizona* arizona; } ;
struct arizona {int dev; int regmap; } ;


 int ARIZONA_FLL1_ENA ;
 int ARIZONA_FLL1_FREERUN ;
 int ARIZONA_FLL1_SYNC_ENA ;
 int arizona_set_fll_clks (struct arizona_fll*,scalar_t__,int) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_update_bits_async (int ,scalar_t__,int ,int ) ;
 int regmap_update_bits_check (int ,scalar_t__,int ,int ,int*) ;

__attribute__((used)) static void arizona_disable_fll(struct arizona_fll *fll)
{
 struct arizona *arizona = fll->arizona;
 bool ref_change, sync_change;

 regmap_update_bits_async(arizona->regmap, fll->base + 1,
     ARIZONA_FLL1_FREERUN, ARIZONA_FLL1_FREERUN);
 regmap_update_bits_check(arizona->regmap, fll->base + 1,
     ARIZONA_FLL1_ENA, 0, &ref_change);
 regmap_update_bits_check(arizona->regmap, fll->base + 0x11,
     ARIZONA_FLL1_SYNC_ENA, 0, &sync_change);
 regmap_update_bits_async(arizona->regmap, fll->base + 1,
     ARIZONA_FLL1_FREERUN, 0);

 if (sync_change)
  arizona_set_fll_clks(fll, fll->base + 0x10, 0);

 if (ref_change) {
  arizona_set_fll_clks(fll, fll->base, 0);
  pm_runtime_put_autosuspend(arizona->dev);
 }
}
