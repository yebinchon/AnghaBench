
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct mchp_i2s_mcc_dev {int gclk_running; int regmap; int dev; int gclk; scalar_t__ gclk_use; int channels; int rx_rdy; int tx_rdy; } ;


 int EINVAL ;
 int MCHP_I2SMCC_CR ;
 int MCHP_I2SMCC_CR_CKEN ;
 int MCHP_I2SMCC_CR_RXDIS ;
 int MCHP_I2SMCC_CR_RXEN ;
 int MCHP_I2SMCC_CR_TXDIS ;
 int MCHP_I2SMCC_CR_TXEN ;
 int MCHP_I2SMCC_IERA ;
 int MCHP_I2SMCC_INT_RXRDY_MASK (int ) ;
 int MCHP_I2SMCC_INT_TXRDY_MASK (int ) ;
 int MCHP_I2SMCC_SR ;
 int MCHP_I2SMCC_SR_RXEN ;
 int MCHP_I2SMCC_SR_TXEN ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;






 int clk_enable (int ) ;
 int dev_err_once (int ,char*,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;
 struct mchp_i2s_mcc_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mchp_i2s_mcc_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 struct mchp_i2s_mcc_dev *dev = snd_soc_dai_get_drvdata(dai);
 bool is_playback = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 u32 cr = 0;
 u32 iera = 0;
 u32 sr;
 int err;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (is_playback)
   cr = MCHP_I2SMCC_CR_TXEN | MCHP_I2SMCC_CR_CKEN;
  else
   cr = MCHP_I2SMCC_CR_RXEN | MCHP_I2SMCC_CR_CKEN;
  break;
 case 129:
 case 128:
 case 133:
  regmap_read(dev->regmap, MCHP_I2SMCC_SR, &sr);
  if (is_playback && (sr & MCHP_I2SMCC_SR_TXEN)) {
   cr = MCHP_I2SMCC_CR_TXDIS;
   dev->tx_rdy = 0;




   iera = MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels);
  } else if (!is_playback && (sr & MCHP_I2SMCC_SR_RXEN)) {
   cr = MCHP_I2SMCC_CR_RXDIS;
   dev->rx_rdy = 0;




   iera = MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels);
  }
  break;
 default:
  return -EINVAL;
 }

 if ((cr & MCHP_I2SMCC_CR_CKEN) && dev->gclk_use &&
     !dev->gclk_running) {
  err = clk_enable(dev->gclk);
  if (err) {
   dev_err_once(dev->dev, "failed to enable GCLK: %d\n",
         err);
  } else {
   dev->gclk_running = 1;
  }
 }

 regmap_write(dev->regmap, MCHP_I2SMCC_IERA, iera);
 regmap_write(dev->regmap, MCHP_I2SMCC_CR, cr);

 return 0;
}
