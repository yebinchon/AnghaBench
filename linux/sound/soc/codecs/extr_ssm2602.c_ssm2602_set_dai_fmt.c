
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssm2602_priv {int regmap; } ;
struct snd_soc_dai {int component; } ;


 int EINVAL ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int SSM2602_IFACE ;
 int regmap_write (int ,int ,unsigned int) ;
 struct ssm2602_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int ssm2602_set_dai_fmt(struct snd_soc_dai *codec_dai,
  unsigned int fmt)
{
 struct ssm2602_priv *ssm2602 = snd_soc_component_get_drvdata(codec_dai->component);
 unsigned int iface = 0;


 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 138:
  iface |= 0x0040;
  break;
 case 137:
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 134:
  iface |= 0x0002;
  break;
 case 128:
  break;
 case 131:
  iface |= 0x0001;
  break;
 case 136:
  iface |= 0x0013;
  break;
 case 135:
  iface |= 0x0003;
  break;
 default:
  return -EINVAL;
 }


 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  break;
 case 133:
  iface |= 0x0090;
  break;
 case 132:
  iface |= 0x0080;
  break;
 case 130:
  iface |= 0x0010;
  break;
 default:
  return -EINVAL;
 }


 regmap_write(ssm2602->regmap, SSM2602_IFACE, iface);
 return 0;
}
