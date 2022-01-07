
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {scalar_t__ active; } ;
struct snd_pcm_substream {int dummy; } ;
struct bcm2835_i2s_dev {int i2s_regmap; } ;


 int BCM2835_I2S_CS_A_REG ;
 int BCM2835_I2S_EN ;
 int BCM2835_I2S_STBY ;
 int bcm2835_i2s_stop_clock (struct bcm2835_i2s_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct bcm2835_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int bcm2835_i2s_startup(struct snd_pcm_substream *substream,
          struct snd_soc_dai *dai)
{
 struct bcm2835_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);

 if (dai->active)
  return 0;


 bcm2835_i2s_stop_clock(dev);


 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
   BCM2835_I2S_EN, BCM2835_I2S_EN);





 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
   BCM2835_I2S_STBY, BCM2835_I2S_STBY);

 return 0;
}
