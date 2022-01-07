
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int regmap; } ;


 int SUN4I_I2S_CTRL_REG ;
 int SUN4I_I2S_CTRL_TX_EN ;
 int SUN4I_I2S_DMA_INT_CTRL_REG ;
 int SUN4I_I2S_DMA_INT_CTRL_TX_DRQ_EN ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void sun4i_i2s_stop_playback(struct sun4i_i2s *i2s)
{

 regmap_update_bits(i2s->regmap, SUN4I_I2S_CTRL_REG,
      SUN4I_I2S_CTRL_TX_EN,
      0);


 regmap_update_bits(i2s->regmap, SUN4I_I2S_DMA_INT_CTRL_REG,
      SUN4I_I2S_DMA_INT_CTRL_TX_DRQ_EN,
      0);
}
