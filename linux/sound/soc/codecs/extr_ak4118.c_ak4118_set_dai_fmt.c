
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct ak4118_priv {int regmap; } ;


 int AK4118_REG_FORMAT_CTL ;
 int AK4118_REG_FORMAT_CTL_DIF0 ;
 int AK4118_REG_FORMAT_CTL_DIF1 ;
 int AK4118_REG_FORMAT_CTL_DIF2 ;
 int ENOTSUPP ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;
 int ak4118_set_dai_fmt_master (struct ak4118_priv*,unsigned int) ;
 int ak4118_set_dai_fmt_slave (struct ak4118_priv*,unsigned int) ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct ak4118_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int ak4118_set_dai_fmt(struct snd_soc_dai *dai,
         unsigned int format)
{
 struct snd_soc_component *component = dai->component;
 struct ak4118_priv *ak4118 = snd_soc_component_get_drvdata(component);
 int dif;
 int ret = 0;

 switch (format & SND_SOC_DAIFMT_MASTER_MASK) {
 case 129:

  dif = ak4118_set_dai_fmt_master(ak4118, format);
  break;
 case 128:

  dif = ak4118_set_dai_fmt_slave(ak4118, format);
  break;
 default:
  ret = -ENOTSUPP;
  goto exit;
 }


 if (dif < 0) {
  ret = dif;
  goto exit;
 }

 ret = regmap_update_bits(ak4118->regmap, AK4118_REG_FORMAT_CTL,
     AK4118_REG_FORMAT_CTL_DIF0 |
     AK4118_REG_FORMAT_CTL_DIF1 |
     AK4118_REG_FORMAT_CTL_DIF2, dif);
 if (ret < 0)
  goto exit;

exit:
 return ret;
}
