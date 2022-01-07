
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int component; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct rk3328_codec_priv {int regmap; } ;


 int DAC_INIT_CTRL2 ;
 int DAC_INIT_CTRL3 ;
 unsigned int DAC_RST_DIS ;
 int DAC_RST_MASK ;
 unsigned int DAC_VDL_16BITS ;
 unsigned int DAC_VDL_20BITS ;
 unsigned int DAC_VDL_24BITS ;
 unsigned int DAC_VDL_32BITS ;
 int DAC_VDL_MASK ;
 unsigned int DAC_WL_32BITS ;
 int DAC_WL_MASK ;
 int EINVAL ;




 int params_format (struct snd_pcm_hw_params*) ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 struct rk3328_codec_priv* snd_soc_component_get_drvdata (int ) ;

__attribute__((used)) static int rk3328_hw_params(struct snd_pcm_substream *substream,
       struct snd_pcm_hw_params *params,
       struct snd_soc_dai *dai)
{
 struct rk3328_codec_priv *rk3328 =
  snd_soc_component_get_drvdata(dai->component);
 unsigned int val = 0;

 switch (params_format(params)) {
 case 131:
  val = DAC_VDL_16BITS;
  break;
 case 130:
  val = DAC_VDL_20BITS;
  break;
 case 129:
  val = DAC_VDL_24BITS;
  break;
 case 128:
  val = DAC_VDL_32BITS;
  break;
 default:
  return -EINVAL;
 }
 regmap_update_bits(rk3328->regmap, DAC_INIT_CTRL2, DAC_VDL_MASK, val);

 val = DAC_WL_32BITS | DAC_RST_DIS;
 regmap_update_bits(rk3328->regmap, DAC_INIT_CTRL3,
      DAC_WL_MASK | DAC_RST_MASK, val);

 return 0;
}
