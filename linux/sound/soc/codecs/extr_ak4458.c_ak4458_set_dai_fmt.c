
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct ak4458_priv {unsigned int fmt; } ;


 int EINVAL ;





 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int ak4458_rstn_control (struct snd_soc_component*,int) ;
 int dev_err (int ,char*,...) ;
 struct ak4458_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4458_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *component = dai->component;
 struct ak4458_priv *ak4458 = snd_soc_component_get_drvdata(component);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
  break;
 case 135:
 case 133:
 case 134:
 default:
  dev_err(component->dev, "Master mode unsupported\n");
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
 case 129:
 case 128:
 case 131:
  ak4458->fmt = fmt & SND_SOC_DAIFMT_FORMAT_MASK;
  break;
 default:
  dev_err(component->dev, "Audio format 0x%02X unsupported\n",
   fmt & SND_SOC_DAIFMT_FORMAT_MASK);
  return -EINVAL;
 }

 ak4458_rstn_control(component, 0);
 ak4458_rstn_control(component, 1);

 return 0;
}
