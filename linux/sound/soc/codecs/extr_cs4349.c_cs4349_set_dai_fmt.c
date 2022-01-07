
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs4349_private {unsigned int mode; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 struct cs4349_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs4349_set_dai_fmt(struct snd_soc_dai *codec_dai,
         unsigned int format)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs4349_private *cs4349 = snd_soc_component_get_drvdata(component);
 unsigned int fmt;

 fmt = format & SND_SOC_DAIFMT_FORMAT_MASK;

 switch (fmt) {
 case 130:
 case 129:
 case 128:
  cs4349->mode = format & SND_SOC_DAIFMT_FORMAT_MASK;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
