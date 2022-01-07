
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct mchp_i2s_mcc_dev {int regmap; } ;


 int MCHP_I2SMCC_CR ;
 int MCHP_I2SMCC_CR_SWRST ;
 int mchp_i2s_mcc_is_running (struct mchp_i2s_mcc_dev*) ;
 int regmap_write (int ,int ,int ) ;
 struct mchp_i2s_mcc_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mchp_i2s_mcc_startup(struct snd_pcm_substream *substream,
    struct snd_soc_dai *dai)
{
 struct mchp_i2s_mcc_dev *dev = snd_soc_dai_get_drvdata(dai);


 if (!mchp_i2s_mcc_is_running(dev)) {
  return regmap_write(dev->regmap, MCHP_I2SMCC_CR,
        MCHP_I2SMCC_CR_SWRST);
 }

 return 0;
}
