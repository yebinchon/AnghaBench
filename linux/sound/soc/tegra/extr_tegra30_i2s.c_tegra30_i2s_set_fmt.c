
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra30_i2s {int regmap; } ;
struct snd_soc_dai {int dev; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;


 int TEGRA30_I2S_CTRL ;
 unsigned int TEGRA30_I2S_CTRL_FRAME_FORMAT_FSYNC ;
 unsigned int TEGRA30_I2S_CTRL_FRAME_FORMAT_LRCK ;
 unsigned int TEGRA30_I2S_CTRL_FRAME_FORMAT_MASK ;
 unsigned int TEGRA30_I2S_CTRL_LRCK_L_LOW ;
 unsigned int TEGRA30_I2S_CTRL_LRCK_MASK ;
 unsigned int TEGRA30_I2S_CTRL_LRCK_R_LOW ;
 unsigned int TEGRA30_I2S_CTRL_MASTER_ENABLE ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct tegra30_i2s* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int tegra30_i2s_set_fmt(struct snd_soc_dai *dai,
    unsigned int fmt)
{
 struct tegra30_i2s *i2s = snd_soc_dai_get_drvdata(dai);
 unsigned int mask = 0, val = 0;

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 default:
  return -EINVAL;
 }

 mask |= TEGRA30_I2S_CTRL_MASTER_ENABLE;
 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 134:
  val |= TEGRA30_I2S_CTRL_MASTER_ENABLE;
  break;
 case 135:
  break;
 default:
  return -EINVAL;
 }

 mask |= TEGRA30_I2S_CTRL_FRAME_FORMAT_MASK |
  TEGRA30_I2S_CTRL_LRCK_MASK;
 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 133:
  val |= TEGRA30_I2S_CTRL_FRAME_FORMAT_FSYNC;
  val |= TEGRA30_I2S_CTRL_LRCK_L_LOW;
  break;
 case 132:
  val |= TEGRA30_I2S_CTRL_FRAME_FORMAT_FSYNC;
  val |= TEGRA30_I2S_CTRL_LRCK_R_LOW;
  break;
 case 131:
  val |= TEGRA30_I2S_CTRL_FRAME_FORMAT_LRCK;
  val |= TEGRA30_I2S_CTRL_LRCK_L_LOW;
  break;
 case 128:
  val |= TEGRA30_I2S_CTRL_FRAME_FORMAT_LRCK;
  val |= TEGRA30_I2S_CTRL_LRCK_L_LOW;
  break;
 case 130:
  val |= TEGRA30_I2S_CTRL_FRAME_FORMAT_LRCK;
  val |= TEGRA30_I2S_CTRL_LRCK_L_LOW;
  break;
 default:
  return -EINVAL;
 }

 pm_runtime_get_sync(dai->dev);
 regmap_update_bits(i2s->regmap, TEGRA30_I2S_CTRL, mask, val);
 pm_runtime_put(dai->dev);

 return 0;
}
