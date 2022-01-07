
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {struct device* dev; } ;
struct device {int dummy; } ;
struct cx2072x_priv {unsigned int dai_fmt; } ;


 int EINVAL ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int dev_dbg (struct device*,char*,unsigned int) ;
 int dev_err (struct device*,char*) ;
 struct cx2072x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cx2072x_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *codec = dai->component;
 struct cx2072x_priv *cx2072x = snd_soc_component_get_drvdata(codec);
 struct device *dev = codec->dev;

 dev_dbg(dev, "set_dai_fmt- %08x\n", fmt);

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 136:
 case 135:
  break;

 default:
  dev_err(dev, "Unsupported DAI master mode\n");
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
 case 128:
 case 131:
  break;

 default:
  dev_err(dev, "Unsupported DAI format\n");
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
 case 133:
 case 132:
 case 130:
  break;

 default:
  dev_err(dev, "Unsupported DAI clock inversion\n");
  return -EINVAL;
 }

 cx2072x->dai_fmt = fmt;
 return 0;
}
