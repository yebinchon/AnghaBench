
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct img_spdif_in {int active; int lock; int multi_freq; } ;


 int EINVAL ;
 int IMG_SPDIF_IN_CTL ;
 unsigned long IMG_SPDIF_IN_CTL_SRD_MASK ;
 unsigned long IMG_SPDIF_IN_CTL_SRD_SHIFT ;
 unsigned long IMG_SPDIF_IN_CTL_SRT_MASK ;






 unsigned long img_spdif_in_readl (struct img_spdif_in*,int ) ;
 int img_spdif_in_writel (struct img_spdif_in*,unsigned long,int ) ;
 struct img_spdif_in* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int img_spdif_in_trigger(struct snd_pcm_substream *substream, int cmd,
 struct snd_soc_dai *dai)
{
 unsigned long flags;
 struct img_spdif_in *spdif = snd_soc_dai_get_drvdata(dai);
 int ret = 0;
 u32 reg;

 spin_lock_irqsave(&spdif->lock, flags);

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  reg = img_spdif_in_readl(spdif, IMG_SPDIF_IN_CTL);
  if (spdif->multi_freq)
   reg &= ~IMG_SPDIF_IN_CTL_SRD_MASK;
  else
   reg |= (1UL << IMG_SPDIF_IN_CTL_SRD_SHIFT);
  reg |= IMG_SPDIF_IN_CTL_SRT_MASK;
  img_spdif_in_writel(spdif, reg, IMG_SPDIF_IN_CTL);
  spdif->active = 1;
  break;
 case 129:
 case 128:
 case 133:
  reg = img_spdif_in_readl(spdif, IMG_SPDIF_IN_CTL);
  reg &= ~IMG_SPDIF_IN_CTL_SRT_MASK;
  img_spdif_in_writel(spdif, reg, IMG_SPDIF_IN_CTL);
  spdif->active = 0;
  break;
 default:
  ret = -EINVAL;
 }

 spin_unlock_irqrestore(&spdif->lock, flags);

 return ret;
}
