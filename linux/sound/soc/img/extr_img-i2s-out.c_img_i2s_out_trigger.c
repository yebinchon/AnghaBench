
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct img_i2s_out {int force_clk_active; } ;


 int EINVAL ;
 int IMG_I2S_OUT_CTL ;
 int IMG_I2S_OUT_CTL_CLK_EN_MASK ;
 int IMG_I2S_OUT_CTL_DATA_EN_MASK ;






 int img_i2s_out_readl (struct img_i2s_out*,int ) ;
 int img_i2s_out_reset (struct img_i2s_out*) ;
 int img_i2s_out_writel (struct img_i2s_out*,int ,int ) ;
 struct img_i2s_out* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int img_i2s_out_trigger(struct snd_pcm_substream *substream, int cmd,
 struct snd_soc_dai *dai)
{
 struct img_i2s_out *i2s = snd_soc_dai_get_drvdata(dai);
 u32 reg;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  reg = img_i2s_out_readl(i2s, IMG_I2S_OUT_CTL);
  if (!i2s->force_clk_active)
   reg |= IMG_I2S_OUT_CTL_CLK_EN_MASK;
  reg |= IMG_I2S_OUT_CTL_DATA_EN_MASK;
  img_i2s_out_writel(i2s, reg, IMG_I2S_OUT_CTL);
  break;
 case 129:
 case 128:
 case 133:
  img_i2s_out_reset(i2s);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
