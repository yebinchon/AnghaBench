
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct madera_fll_cfg {scalar_t__ theta; } ;
struct madera_fll {scalar_t__ base; TYPE_1__* madera; } ;
struct TYPE_2__ {int regmap; } ;


 int MADERA_FLL1_PHASE_ENA_MASK ;
 int MADERA_FLL1_PHASE_ENA_SHIFT ;
 int MADERA_FLL1_PHASE_GAIN_MASK ;
 int MADERA_FLL1_PHASE_GAIN_SHIFT ;
 scalar_t__ MADERA_FLL_EFS_2_OFFS ;
 int regmap_update_bits_check (int ,scalar_t__,int,unsigned int,int*) ;

__attribute__((used)) static bool madera_set_fll_phase_integrator(struct madera_fll *fll,
         struct madera_fll_cfg *ref_cfg,
         bool sync)
{
 unsigned int val;
 bool reg_change;

 if (!sync && ref_cfg->theta == 0)
  val = (1 << MADERA_FLL1_PHASE_ENA_SHIFT) |
        (2 << MADERA_FLL1_PHASE_GAIN_SHIFT);
 else
  val = 2 << MADERA_FLL1_PHASE_GAIN_SHIFT;

 regmap_update_bits_check(fll->madera->regmap,
     fll->base + MADERA_FLL_EFS_2_OFFS,
     MADERA_FLL1_PHASE_ENA_MASK |
     MADERA_FLL1_PHASE_GAIN_MASK,
     val, &reg_change);

 return reg_change;
}
