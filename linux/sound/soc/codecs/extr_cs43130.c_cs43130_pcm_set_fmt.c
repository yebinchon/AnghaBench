
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct cs43130_private {TYPE_1__* dais; } ;
struct TYPE_2__ {int dai_mode; int dai_format; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int dev_dbg (int ,char*,size_t,int,int) ;
 int dev_err (int ,char*) ;
 struct cs43130_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs43130_pcm_set_fmt(struct snd_soc_dai *codec_dai, unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct cs43130_private *cs43130 = snd_soc_component_get_drvdata(component);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
  cs43130->dais[codec_dai->id].dai_mode = 132;
  break;
 case 133:
  cs43130->dais[codec_dai->id].dai_mode = 133;
  break;
 default:
  dev_err(component->dev, "unsupported mode\n");
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
  cs43130->dais[codec_dai->id].dai_format = 129;
  break;
 case 128:
  cs43130->dais[codec_dai->id].dai_format = 128;
  break;
 case 131:
  cs43130->dais[codec_dai->id].dai_format = 131;
  break;
 case 130:
  cs43130->dais[codec_dai->id].dai_format = 130;
  break;
 default:
  dev_err(component->dev,
   "unsupported audio format\n");
  return -EINVAL;
 }

 dev_dbg(component->dev, "dai_id = %d,  dai_mode = %u, dai_format = %u\n",
  codec_dai->id,
  cs43130->dais[codec_dai->id].dai_mode,
  cs43130->dais[codec_dai->id].dai_format);

 return 0;
}
