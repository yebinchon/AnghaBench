
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct axg_spdifout {int map; } ;


 unsigned int SPDIFOUT_CHSTS0 ;
 unsigned int SPDIFOUT_CHSTS1 ;
 unsigned int SPDIFOUT_CHSTS5 ;
 unsigned int SPDIFOUT_CHSTS6 ;
 unsigned int SPDIFOUT_CHSTS7 ;
 unsigned int SPDIFOUT_CHSTSB ;
 int dev_err (int ,char*,int) ;
 scalar_t__ regmap_get_reg_stride (int ) ;
 int regmap_write (int ,unsigned int,int) ;
 int snd_pcm_create_iec958_consumer_hw_params (struct snd_pcm_hw_params*,int*,int) ;
 struct axg_spdifout* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int axg_spdifout_set_chsts(struct snd_pcm_hw_params *params,
      struct snd_soc_dai *dai)
{
 struct axg_spdifout *priv = snd_soc_dai_get_drvdata(dai);
 unsigned int offset;
 int ret;
 u8 cs[4];
 u32 val;

 ret = snd_pcm_create_iec958_consumer_hw_params(params, cs, 4);
 if (ret < 0) {
  dev_err(dai->dev, "Creating IEC958 channel status failed %d\n",
   ret);
  return ret;
 }
 val = cs[0] | cs[1] << 8 | cs[2] << 16 | cs[3] << 24;


 regmap_write(priv->map, SPDIFOUT_CHSTS0, val);


 for (offset = SPDIFOUT_CHSTS1; offset <= SPDIFOUT_CHSTS5;
      offset += regmap_get_reg_stride(priv->map))
  regmap_write(priv->map, offset, 0);


 regmap_write(priv->map, SPDIFOUT_CHSTS6, val);


 for (offset = SPDIFOUT_CHSTS7; offset <= SPDIFOUT_CHSTSB;
      offset += regmap_get_reg_stride(priv->map))
  regmap_write(priv->map, offset, 0);

 return 0;
}
