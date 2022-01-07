
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct img_prl_out {int dummy; } ;


 int EINVAL ;
 int IMG_PRL_OUT_CTL ;
 int IMG_PRL_OUT_CTL_ME_MASK ;






 int img_prl_out_readl (struct img_prl_out*,int ) ;
 int img_prl_out_reset (struct img_prl_out*) ;
 int img_prl_out_writel (struct img_prl_out*,int ,int ) ;
 struct img_prl_out* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int img_prl_out_trigger(struct snd_pcm_substream *substream, int cmd,
   struct snd_soc_dai *dai)
{
 struct img_prl_out *prl = snd_soc_dai_get_drvdata(dai);
 u32 reg;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  reg = img_prl_out_readl(prl, IMG_PRL_OUT_CTL);
  reg |= IMG_PRL_OUT_CTL_ME_MASK;
  img_prl_out_writel(prl, reg, IMG_PRL_OUT_CTL);
  break;
 case 129:
 case 128:
 case 133:
  img_prl_out_reset(prl);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
