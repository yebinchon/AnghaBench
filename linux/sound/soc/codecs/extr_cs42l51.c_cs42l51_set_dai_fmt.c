
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cs42l51_private {unsigned int audio_mode; int func; } ;


 int EINVAL ;
 int MODE_MASTER ;
 int MODE_SLAVE_AUTO ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int dev_err (int ,char*) ;
 struct cs42l51_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs42l51_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int format)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs42l51_private *cs42l51 = snd_soc_component_get_drvdata(component);

 switch (format & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
 case 129:
 case 128:
  cs42l51->audio_mode = format & SND_SOC_DAIFMT_FORMAT_MASK;
  break;
 default:
  dev_err(component->dev, "invalid DAI format\n");
  return -EINVAL;
 }

 switch (format & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
  cs42l51->func = MODE_MASTER;
  break;
 case 131:
  cs42l51->func = MODE_SLAVE_AUTO;
  break;
 default:
  dev_err(component->dev, "Unknown master/slave configuration\n");
  return -EINVAL;
 }

 return 0;
}
