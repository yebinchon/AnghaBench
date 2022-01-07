
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 int TAS5720_DIGITAL_CTRL1_REG ;
 int TAS5720_SSZ_DS ;
 int dev_err (int ,char*,int) ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;

__attribute__((used)) static int tas5720_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 unsigned int rate = params_rate(params);
 bool ssz_ds;
 int ret;

 switch (rate) {
 case 44100:
 case 48000:
  ssz_ds = 0;
  break;
 case 88200:
 case 96000:
  ssz_ds = 1;
  break;
 default:
  dev_err(component->dev, "unsupported sample rate: %u\n", rate);
  return -EINVAL;
 }

 ret = snd_soc_component_update_bits(component, TAS5720_DIGITAL_CTRL1_REG,
      TAS5720_SSZ_DS, ssz_ds);
 if (ret < 0) {
  dev_err(component->dev, "error setting sample rate: %d\n", ret);
  return ret;
 }

 return 0;
}
