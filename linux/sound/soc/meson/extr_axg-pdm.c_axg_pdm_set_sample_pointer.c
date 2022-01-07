
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct axg_pdm {int map; int dclk; int sysclk; } ;


 unsigned int DIV_ROUND_UP_ULL (int ,int) ;
 int EINVAL ;
 int PDM_CHAN_CTRL ;
 int PDM_CHAN_CTRL1 ;
 int PDM_CHAN_CTRL_NUM ;
 unsigned int PDM_CHAN_CTRL_POINTER_MAX ;
 int PDM_CHAN_CTRL_POINTER_WIDTH ;
 scalar_t__ WARN_ON (int) ;
 int clk_get_rate (int ) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int axg_pdm_set_sample_pointer(struct axg_pdm *priv)
{
 unsigned int spmax, sp, val;
 int i;


 spmax = DIV_ROUND_UP_ULL((u64)clk_get_rate(priv->sysclk),
     clk_get_rate(priv->dclk) * 2);


 if (WARN_ON(spmax > PDM_CHAN_CTRL_POINTER_MAX))
  return -EINVAL;


 sp = spmax * 3 / 4;

 for (i = 0, val = 0; i < PDM_CHAN_CTRL_NUM; i++)
  val |= sp << (PDM_CHAN_CTRL_POINTER_WIDTH * i);

 regmap_write(priv->map, PDM_CHAN_CTRL, val);
 regmap_write(priv->map, PDM_CHAN_CTRL1, val);

 return 0;
}
