
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_i2s {unsigned int format; int regmap; TYPE_1__* variant; } ;
struct snd_soc_dai {int dev; } ;
struct TYPE_2__ {int (* set_fmt ) (struct sun4i_i2s*,unsigned int) ;} ;


 int SUN4I_I2S_FIFO_CTRL_REG ;
 int SUN4I_I2S_FIFO_CTRL_RX_MODE (int) ;
 int SUN4I_I2S_FIFO_CTRL_RX_MODE_MASK ;
 int SUN4I_I2S_FIFO_CTRL_TX_MODE (int) ;
 int SUN4I_I2S_FIFO_CTRL_TX_MODE_MASK ;
 int dev_err (int ,char*) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct sun4i_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int stub1 (struct sun4i_i2s*,unsigned int) ;

__attribute__((used)) static int sun4i_i2s_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 int ret;

 ret = i2s->variant->set_fmt(i2s, fmt);
 if (ret) {
  dev_err(dai->dev, "Unsupported format configuration\n");
  return ret;
 }


 regmap_update_bits(i2s->regmap, SUN4I_I2S_FIFO_CTRL_REG,
      SUN4I_I2S_FIFO_CTRL_TX_MODE_MASK |
      SUN4I_I2S_FIFO_CTRL_RX_MODE_MASK,
      SUN4I_I2S_FIFO_CTRL_TX_MODE(1) |
      SUN4I_I2S_FIFO_CTRL_RX_MODE(1));

 i2s->format = fmt;

 return 0;
}
