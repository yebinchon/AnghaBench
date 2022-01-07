
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct img_prl_out {int dev; } ;


 int EINVAL ;
 int IMG_PRL_OUT_CTL ;
 int IMG_PRL_OUT_CTL_EDGE_MASK ;
 unsigned int SND_SOC_DAIFMT_INV_MASK ;


 int img_prl_out_readl (struct img_prl_out*,int ) ;
 int img_prl_out_writel (struct img_prl_out*,int,int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 struct img_prl_out* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int img_prl_out_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct img_prl_out *prl = snd_soc_dai_get_drvdata(dai);
 u32 reg, control_set = 0;
 int ret;

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 129:
  control_set |= IMG_PRL_OUT_CTL_EDGE_MASK;
  break;
 default:
  return -EINVAL;
 }

 ret = pm_runtime_get_sync(prl->dev);
 if (ret < 0)
  return ret;

 reg = img_prl_out_readl(prl, IMG_PRL_OUT_CTL);
 reg = (reg & ~IMG_PRL_OUT_CTL_EDGE_MASK) | control_set;
 img_prl_out_writel(prl, reg, IMG_PRL_OUT_CTL);
 pm_runtime_put(prl->dev);

 return 0;
}
