
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_pdm {int map; } ;


 unsigned int GENMASK (unsigned int,int ) ;
 int PDM_CTRL ;
 int PDM_CTRL_CHAN_EN (unsigned int) ;
 int PDM_CTRL_CHAN_EN_MASK ;
 int PDM_CTRL_CHAN_RSTN (unsigned int) ;
 int PDM_CTRL_CHAN_RSTN_MASK ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void axg_pdm_set_channel_mask(struct axg_pdm *priv,
         unsigned int channels)
{
 unsigned int mask = GENMASK(channels - 1, 0);


 regmap_update_bits(priv->map, PDM_CTRL,
      PDM_CTRL_CHAN_RSTN_MASK, 0);


 regmap_update_bits(priv->map, PDM_CTRL,
      PDM_CTRL_CHAN_RSTN_MASK |
      PDM_CTRL_CHAN_EN_MASK,
      PDM_CTRL_CHAN_RSTN(mask) |
      PDM_CTRL_CHAN_EN(mask));
}
