
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct sirf_usp {unsigned int daifmt_format; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_INV_MASK ;
 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int dev_err (int ,char*) ;
 struct sirf_usp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int sirf_usp_pcm_set_dai_fmt(struct snd_soc_dai *dai,
  unsigned int fmt)
{
 struct sirf_usp *usp = snd_soc_dai_get_drvdata(dai);


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
  break;
 default:
  dev_err(dai->dev, "Only CBM and CFM supported\n");
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
 case 131:
  usp->daifmt_format = (fmt & SND_SOC_DAIFMT_FORMAT_MASK);
  break;
 default:
  dev_err(dai->dev, "Only I2S and DSP_A format supported\n");
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 128:
  break;
 case 129:
  usp->daifmt_format |= (fmt & SND_SOC_DAIFMT_INV_MASK);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
