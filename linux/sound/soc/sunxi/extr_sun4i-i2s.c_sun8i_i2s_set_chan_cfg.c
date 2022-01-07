
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_i2s {int slots; int format; int regmap; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;


 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int SUN4I_I2S_CHAN_SEL (unsigned int) ;
 int SUN4I_I2S_CHAN_SEL_MASK ;
 int SUN4I_I2S_FMT0_REG ;
 int SUN8I_I2S_CHAN_CFG_REG ;
 int SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM (unsigned int) ;
 int SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK ;
 int SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM (unsigned int) ;
 int SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK ;
 int SUN8I_I2S_FMT0_LRCK_PERIOD (unsigned int) ;
 int SUN8I_I2S_FMT0_LRCK_PERIOD_MASK ;
 int SUN8I_I2S_RX_CHAN_MAP_REG ;
 int SUN8I_I2S_RX_CHAN_SEL_REG ;
 int SUN8I_I2S_TX_CHAN_EN (unsigned int) ;
 int SUN8I_I2S_TX_CHAN_EN_MASK ;
 int SUN8I_I2S_TX_CHAN_MAP_REG ;
 int SUN8I_I2S_TX_CHAN_SEL_REG ;
 unsigned int params_channels (struct snd_pcm_hw_params const*) ;
 unsigned int params_physical_width (struct snd_pcm_hw_params const*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
      const struct snd_pcm_hw_params *params)
{
 unsigned int channels = params_channels(params);
 unsigned int slots = channels;
 unsigned int lrck_period;

 if (i2s->slots)
  slots = i2s->slots;


 regmap_write(i2s->regmap, SUN8I_I2S_TX_CHAN_MAP_REG, 0x76543210);
 regmap_write(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, 0x76543210);


 regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
      SUN4I_I2S_CHAN_SEL_MASK,
      SUN4I_I2S_CHAN_SEL(channels));
 regmap_update_bits(i2s->regmap, SUN8I_I2S_RX_CHAN_SEL_REG,
      SUN4I_I2S_CHAN_SEL_MASK,
      SUN4I_I2S_CHAN_SEL(channels));

 regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
      SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM_MASK,
      SUN8I_I2S_CHAN_CFG_TX_SLOT_NUM(channels));
 regmap_update_bits(i2s->regmap, SUN8I_I2S_CHAN_CFG_REG,
      SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM_MASK,
      SUN8I_I2S_CHAN_CFG_RX_SLOT_NUM(channels));

 switch (i2s->format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:
 case 131:
 case 129:
 case 128:
  lrck_period = params_physical_width(params) * slots;
  break;

 case 130:
  lrck_period = params_physical_width(params);
  break;

 default:
  return -EINVAL;
 }

 regmap_update_bits(i2s->regmap, SUN4I_I2S_FMT0_REG,
      SUN8I_I2S_FMT0_LRCK_PERIOD_MASK,
      SUN8I_I2S_FMT0_LRCK_PERIOD(lrck_period));

 regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
      SUN8I_I2S_TX_CHAN_EN_MASK,
      SUN8I_I2S_TX_CHAN_EN(channels));

 return 0;
}
