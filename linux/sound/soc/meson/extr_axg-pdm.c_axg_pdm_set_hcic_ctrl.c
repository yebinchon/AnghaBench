
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct axg_pdm_hcic {int shift; int mult; int ds; int steps; } ;
struct axg_pdm {int map; TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* filters; } ;
struct TYPE_3__ {struct axg_pdm_hcic hcic; } ;


 int PDM_HCIC_CTRL1 ;
 unsigned int PDM_HCIC_CTRL1_DSR (int ) ;
 int PDM_HCIC_CTRL1_DSR_MASK ;
 unsigned int PDM_HCIC_CTRL1_GAIN_MULT (int ) ;
 int PDM_HCIC_CTRL1_GAIN_MULT_MASK ;
 unsigned int PDM_HCIC_CTRL1_GAIN_SFT (int ) ;
 int PDM_HCIC_CTRL1_GAIN_SFT_MASK ;
 unsigned int PDM_HCIC_CTRL1_STAGE_NUM (int ) ;
 int PDM_HCIC_CTRL1_STAGE_NUM_MASK ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;

__attribute__((used)) static void axg_pdm_set_hcic_ctrl(struct axg_pdm *priv)
{
 const struct axg_pdm_hcic *hcic = &priv->cfg->filters->hcic;
 unsigned int val;

 val = PDM_HCIC_CTRL1_STAGE_NUM(hcic->steps);
 val |= PDM_HCIC_CTRL1_DSR(hcic->ds);
 val |= PDM_HCIC_CTRL1_GAIN_MULT(hcic->mult);
 val |= PDM_HCIC_CTRL1_GAIN_SFT(hcic->shift);

 regmap_update_bits(priv->map, PDM_HCIC_CTRL1,
      PDM_HCIC_CTRL1_STAGE_NUM_MASK |
      PDM_HCIC_CTRL1_DSR_MASK |
      PDM_HCIC_CTRL1_GAIN_MULT_MASK |
      PDM_HCIC_CTRL1_GAIN_SFT_MASK,
      val);
}
