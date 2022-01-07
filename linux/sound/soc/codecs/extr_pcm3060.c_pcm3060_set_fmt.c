
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {size_t id; struct snd_soc_component* component; } ;
struct snd_soc_component {int dev; } ;
struct pcm3060_priv {int regmap; TYPE_1__* dai; } ;
struct TYPE_2__ {int is_master; } ;


 int EINVAL ;
 scalar_t__ PCM3060_DAI_ID_DAC ;
 unsigned int PCM3060_REG67 ;
 unsigned int PCM3060_REG72 ;
 unsigned int PCM3060_REG_FMT_I2S ;
 unsigned int PCM3060_REG_FMT_LJ ;
 unsigned int PCM3060_REG_FMT_RJ ;
 int PCM3060_REG_MASK_FMT ;


 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;

 unsigned int SND_SOC_DAIFMT_INV_MASK ;

 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 unsigned int SND_SOC_DAIFMT_NB_NF ;

 int dev_err (int ,char*,unsigned int) ;
 int regmap_update_bits (int ,unsigned int,int ,unsigned int) ;
 struct pcm3060_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int pcm3060_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct snd_soc_component *comp = dai->component;
 struct pcm3060_priv *priv = snd_soc_component_get_drvdata(comp);
 unsigned int reg;
 unsigned int val;

 if ((fmt & SND_SOC_DAIFMT_INV_MASK) != SND_SOC_DAIFMT_NB_NF) {
  dev_err(comp->dev, "unsupported DAI polarity: 0x%x\n", fmt);
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 132:
  priv->dai[dai->id].is_master = 1;
  break;
 case 131:
  priv->dai[dai->id].is_master = 0;
  break;
 default:
  dev_err(comp->dev, "unsupported DAI master mode: 0x%x\n", fmt);
  return -EINVAL;
 }

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 130:
  val = PCM3060_REG_FMT_I2S;
  break;
 case 128:
  val = PCM3060_REG_FMT_RJ;
  break;
 case 129:
  val = PCM3060_REG_FMT_LJ;
  break;
 default:
  dev_err(comp->dev, "unsupported DAI format: 0x%x\n", fmt);
  return -EINVAL;
 }

 if (dai->id == PCM3060_DAI_ID_DAC)
  reg = PCM3060_REG67;
 else
  reg = PCM3060_REG72;

 regmap_update_bits(priv->regmap, reg, PCM3060_REG_MASK_FMT, val);

 return 0;
}
