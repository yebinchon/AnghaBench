
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_tdm_iface {int fmt; int slots; } ;


 int EINVAL ;
 int SND_SOC_DAIFMT_CBS_CFS ;


 int SND_SOC_DAIFMT_FORMAT_MASK ;



 int axg_tdm_iface_set_lrclk (struct snd_soc_dai*,struct snd_pcm_hw_params*) ;
 int axg_tdm_iface_set_sclk (struct snd_soc_dai*,struct snd_pcm_hw_params*) ;
 int axg_tdm_iface_set_stream (struct snd_pcm_substream*,struct snd_pcm_hw_params*,struct snd_soc_dai*) ;
 int dev_err (int ,char*,...) ;
 struct axg_tdm_iface* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_tdm_iface_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct axg_tdm_iface *iface = snd_soc_dai_get_drvdata(dai);
 int ret;

 switch (iface->fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
 case 129:
 case 128:
  if (iface->slots > 2) {
   dev_err(dai->dev, "bad slot number for format: %d\n",
    iface->slots);
   return -EINVAL;
  }
  break;

 case 132:
 case 131:
  break;

 default:
  dev_err(dai->dev, "unsupported dai format\n");
  return -EINVAL;
 }

 ret = axg_tdm_iface_set_stream(substream, params, dai);
 if (ret)
  return ret;

 if (iface->fmt & SND_SOC_DAIFMT_CBS_CFS) {
  ret = axg_tdm_iface_set_sclk(dai, params);
  if (ret)
   return ret;

  ret = axg_tdm_iface_set_lrclk(dai, params);
  if (ret)
   return ret;
 }

 return 0;
}
