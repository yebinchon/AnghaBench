
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct axg_pdm_lpf {unsigned int tap_num; int * tap; } ;
struct axg_pdm {int map; TYPE_1__* cfg; } ;
struct TYPE_4__ {struct axg_pdm_lpf* lpf; } ;
struct TYPE_3__ {TYPE_2__* filters; } ;


 int EINVAL ;
 int PDM_COEFF_ADDR ;
 int PDM_COEFF_DATA ;
 unsigned int PDM_LPF_MAX_STAGE ;
 int PDM_LPF_NUM ;
 int axg_pdm_set_lpf_ctrl (struct axg_pdm*,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int axg_pdm_set_lpf_filters(struct axg_pdm *priv)
{
 const struct axg_pdm_lpf *lpf = priv->cfg->filters->lpf;
 unsigned int count = 0;
 int i, j;

 for (i = 0; i < PDM_LPF_NUM; i++)
  count += lpf[i].tap_num;


 if (count >= PDM_LPF_MAX_STAGE)
  return -EINVAL;


 regmap_write(priv->map, PDM_COEFF_ADDR, 0);


 for (i = 0; i < PDM_LPF_NUM; i++) {
  axg_pdm_set_lpf_ctrl(priv, i);

  for (j = 0; j < lpf[i].tap_num; j++)
   regmap_write(priv->map, PDM_COEFF_DATA, lpf[i].tap[j]);
 }

 return 0;
}
