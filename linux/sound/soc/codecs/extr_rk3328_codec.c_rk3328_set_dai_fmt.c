
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct rk3328_codec_priv {int regmap; } ;


 int DAC_I2S_MODE_MASK ;
 unsigned int DAC_I2S_MODE_MASTER ;
 unsigned int DAC_I2S_MODE_SLAVE ;
 int DAC_INIT_CTRL1 ;
 int DAC_INIT_CTRL2 ;
 unsigned int DAC_MODE_I2S ;
 unsigned int DAC_MODE_LJM ;
 int DAC_MODE_MASK ;
 unsigned int DAC_MODE_PCM ;
 unsigned int DAC_MODE_RJM ;
 int EINVAL ;
 unsigned int PIN_DIRECTION_IN ;
 int PIN_DIRECTION_MASK ;
 unsigned int PIN_DIRECTION_OUT ;




 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;


 unsigned int SND_SOC_DAIFMT_MASTER_MASK ;

 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct rk3328_codec_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int rk3328_set_dai_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct rk3328_codec_priv *rk3328 =
  snd_soc_component_get_drvdata(dai->component);
 unsigned int val;

 switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
 case 133:
  val = PIN_DIRECTION_IN | DAC_I2S_MODE_SLAVE;
  break;
 case 134:
  val = PIN_DIRECTION_OUT | DAC_I2S_MODE_MASTER;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(rk3328->regmap, DAC_INIT_CTRL1,
      PIN_DIRECTION_MASK | DAC_I2S_MODE_MASK, val);

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 132:
 case 131:
  val = DAC_MODE_PCM;
  break;
 case 130:
  val = DAC_MODE_I2S;
  break;
 case 128:
  val = DAC_MODE_RJM;
  break;
 case 129:
  val = DAC_MODE_LJM;
  break;
 default:
  return -EINVAL;
 }

 regmap_update_bits(rk3328->regmap, DAC_INIT_CTRL2,
      DAC_MODE_MASK, val);

 return 0;
}
