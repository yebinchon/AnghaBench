
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct axg_pdm_lpf {int round_mode; int ds; int tap_num; } ;
struct axg_pdm {int map; TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* filters; } ;
struct TYPE_3__ {struct axg_pdm_lpf* lpf; } ;


 unsigned int PDM_F1_CTRL ;
 unsigned int PDM_LPF_DSR (int ) ;
 int PDM_LPF_DSR_MASK ;
 unsigned int PDM_LPF_ROUND_MODE (int ) ;
 int PDM_LPF_ROUND_MODE_MASK ;
 unsigned int PDM_LPF_STAGE_NUM (int ) ;
 int PDM_LPF_STAGE_NUM_MASK ;
 unsigned int regmap_get_reg_stride (int ) ;
 int regmap_update_bits (int ,unsigned int,int,unsigned int) ;

__attribute__((used)) static void axg_pdm_set_lpf_ctrl(struct axg_pdm *priv, unsigned int index)
{
 const struct axg_pdm_lpf *lpf = &priv->cfg->filters->lpf[index];
 unsigned int offset = index * regmap_get_reg_stride(priv->map)
  + PDM_F1_CTRL;
 unsigned int val;

 val = PDM_LPF_STAGE_NUM(lpf->tap_num);
 val |= PDM_LPF_DSR(lpf->ds);
 val |= PDM_LPF_ROUND_MODE(lpf->round_mode);

 regmap_update_bits(priv->map, offset,
      PDM_LPF_STAGE_NUM_MASK |
      PDM_LPF_DSR_MASK |
      PDM_LPF_ROUND_MODE_MASK,
      val);
}
