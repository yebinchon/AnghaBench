
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct img_spdif_out {int lock; } ;


 int EINVAL ;
 int IMG_SPDIF_OUT_CTL ;
 int IMG_SPDIF_OUT_CTL_SRT_MASK ;






 int img_spdif_out_readl (struct img_spdif_out*,int ) ;
 int img_spdif_out_reset (struct img_spdif_out*) ;
 int img_spdif_out_writel (struct img_spdif_out*,int ,int ) ;
 struct img_spdif_out* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int img_spdif_out_trigger(struct snd_pcm_substream *substream, int cmd,
   struct snd_soc_dai *dai)
{
 struct img_spdif_out *spdif = snd_soc_dai_get_drvdata(dai);
 u32 reg;
 unsigned long flags;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  reg = img_spdif_out_readl(spdif, IMG_SPDIF_OUT_CTL);
  reg |= IMG_SPDIF_OUT_CTL_SRT_MASK;
  img_spdif_out_writel(spdif, reg, IMG_SPDIF_OUT_CTL);
  break;
 case 129:
 case 128:
 case 133:
  spin_lock_irqsave(&spdif->lock, flags);
  img_spdif_out_reset(spdif);
  spin_unlock_irqrestore(&spdif->lock, flags);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
