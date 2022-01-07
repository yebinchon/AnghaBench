
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct axg_tdm_iface {unsigned int fmt; int mclk; } ;


 int EINVAL ;
 int ENODEV ;
 unsigned int SND_SOC_DAIFMT_CBM_CFS ;
 unsigned int SND_SOC_DAIFMT_CBS_CFM ;
 unsigned int SND_SOC_DAIFMT_CBS_CFS ;
 int dev_err (int ,char*) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_tdm_iface_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);


 if (fmt & (SND_SOC_DAIFMT_CBS_CFM | SND_SOC_DAIFMT_CBM_CFS)) {
  dev_err(dai->dev, "only CBS_CFS and CBM_CFM are supported\n");
  return -EINVAL;
 }


 if (!iface->mclk && (fmt & SND_SOC_DAIFMT_CBS_CFS)) {
  dev_err(dai->dev, "cpu clock master: mclk missing\n");
  return -ENODEV;
 }

 iface->fmt = fmt;
 return 0;
}
