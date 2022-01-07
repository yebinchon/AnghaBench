
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int regmap; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int SUN4I_I2S_CHAN_SEL (unsigned int) ;
 int SUN4I_I2S_CHAN_SEL_MASK ;
 int SUN4I_I2S_RX_CHAN_MAP_REG ;
 int SUN4I_I2S_RX_CHAN_SEL_REG ;
 int SUN4I_I2S_TX_CHAN_MAP_REG ;
 int SUN4I_I2S_TX_CHAN_SEL_REG ;
 unsigned int params_channels (struct snd_pcm_hw_params const*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int sun4i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
      const struct snd_pcm_hw_params *params)
{
 unsigned int channels = params_channels(params);


 regmap_write(i2s->regmap, SUN4I_I2S_TX_CHAN_MAP_REG, 0x76543210);
 regmap_write(i2s->regmap, SUN4I_I2S_RX_CHAN_MAP_REG, 0x00003210);


 regmap_update_bits(i2s->regmap, SUN4I_I2S_TX_CHAN_SEL_REG,
      SUN4I_I2S_CHAN_SEL_MASK,
      SUN4I_I2S_CHAN_SEL(channels));
 regmap_update_bits(i2s->regmap, SUN4I_I2S_RX_CHAN_SEL_REG,
      SUN4I_I2S_CHAN_SEL_MASK,
      SUN4I_I2S_CHAN_SEL(channels));

 return 0;
}
