
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta350_priv {unsigned int format; int regmap; } ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;

 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;



 int STA350_CONFB ;
 unsigned int STA350_CONFB_C1IM ;
 unsigned int STA350_CONFB_C2IM ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct sta350_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int sta350_set_dai_fmt(struct snd_soc_dai *codec_dai,
         unsigned int fmt)
{
 struct snd_soc_component *component = codec_dai->component;
 struct sta350_priv *sta350 = snd_soc_component_get_drvdata(component);
 unsigned int confb = 0;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:
 case 128:
 case 131:
  sta350->format = fmt & SND_SOC_DAIFMT_FORMAT_MASK;
  break;
 default:
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
 case 129:
  confb |= STA350_CONFB_C2IM;
  break;
 case 130:
  confb |= STA350_CONFB_C1IM;
  break;
 default:
  return -EINVAL;
 }

 return regmap_update_bits(sta350->regmap, STA350_CONFB,
      STA350_CONFB_C1IM | STA350_CONFB_C2IM, confb);
}
