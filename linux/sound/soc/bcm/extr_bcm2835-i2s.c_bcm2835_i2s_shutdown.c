
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {scalar_t__ active; } ;
struct snd_pcm_substream {int dummy; } ;
struct bcm2835_i2s_dev {int i2s_regmap; } ;


 int BCM2835_I2S_CS_A_REG ;
 int BCM2835_I2S_EN ;
 int bcm2835_i2s_stop (struct bcm2835_i2s_dev*,struct snd_pcm_substream*,struct snd_soc_dai*) ;
 int bcm2835_i2s_stop_clock (struct bcm2835_i2s_dev*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 struct bcm2835_i2s_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static void bcm2835_i2s_shutdown(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct bcm2835_i2s_dev *dev = snd_soc_dai_get_drvdata(dai);

 bcm2835_i2s_stop(dev, substream, dai);


 if (dai->active)
  return;


 regmap_update_bits(dev->i2s_regmap, BCM2835_I2S_CS_A_REG,
   BCM2835_I2S_EN, 0);





 bcm2835_i2s_stop_clock(dev);
}
