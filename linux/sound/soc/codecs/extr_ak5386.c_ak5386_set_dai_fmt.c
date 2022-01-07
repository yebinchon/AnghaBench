
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_LEFT_J ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int ak5386_set_dai_fmt(struct snd_soc_dai *codec_dai,
         unsigned int format)
{
 struct snd_soc_component *component = codec_dai->component;

 format &= SND_SOC_DAIFMT_FORMAT_MASK;
 if (format != SND_SOC_DAIFMT_LEFT_J &&
     format != SND_SOC_DAIFMT_I2S) {
  dev_err(component->dev, "Invalid DAI format\n");
  return -EINVAL;
 }

 return 0;
}
