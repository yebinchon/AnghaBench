
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cs4270_private {unsigned int mode; int slave_mode; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_err (int ,char*) ;
 struct cs4270_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs4270_set_dai_fmt(struct snd_soc_dai *codec_dai,
         unsigned int format)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs4270_private *cs4270 = snd_soc_component_get_drvdata(component);


 switch (format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
 case 128:
  cs4270->mode = format & SND_SOC_DAIFMT_FORMAT_MASK;
  break;
 default:
  dev_err(component->dev, "invalid dai format\n");
  return -EINVAL;
 }


 switch (format & SND_SOC_DAIFMT_MASTER_MASK) {
 case 130:
  cs4270->slave_mode = 1;
  break;
 case 131:
  cs4270->slave_mode = 0;
  break;
 default:

  dev_err(component->dev, "Unknown master/slave configuration\n");
  return -EINVAL;
 }

 return 0;
}
