
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct ep93xx_ac97_info {int dev; } ;


 int AC97RXCR (int) ;
 unsigned int AC97RXCR_CM ;
 unsigned int AC97RXCR_REN ;
 unsigned int AC97RXCR_RX3 ;
 unsigned int AC97RXCR_RX4 ;
 int AC97SR (int) ;
 unsigned int AC97SR_TXFE ;
 unsigned int AC97SR_TXUE ;
 int AC97TXCR (int) ;
 unsigned int AC97TXCR_CM ;
 unsigned int AC97TXCR_TEN ;
 unsigned int AC97TXCR_TX3 ;
 unsigned int AC97TXCR_TX4 ;
 unsigned long AC97_TIMEOUT ;
 int EINVAL ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 int dev_warn (int ,char*,...) ;
 unsigned int ep93xx_ac97_read_reg (struct ep93xx_ac97_info*,int ) ;
 int ep93xx_ac97_write_reg (struct ep93xx_ac97_info*,int ,unsigned int) ;
 unsigned long jiffies ;
 struct ep93xx_ac97_info* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int ep93xx_ac97_trigger(struct snd_pcm_substream *substream,
          int cmd, struct snd_soc_dai *dai)
{
 struct ep93xx_ac97_info *info = snd_soc_dai_get_drvdata(dai);
 unsigned v = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {




   v |= AC97TXCR_CM;
   v |= AC97TXCR_TX3 | AC97TXCR_TX4;
   v |= AC97TXCR_TEN;
   ep93xx_ac97_write_reg(info, AC97TXCR(1), v);
  } else {




   v |= AC97RXCR_CM;
   v |= AC97RXCR_RX3 | AC97RXCR_RX4;
   v |= AC97RXCR_REN;
   ep93xx_ac97_write_reg(info, AC97RXCR(1), v);
  }
  break;

 case 129:
 case 128:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
   unsigned long timeout = jiffies + AC97_TIMEOUT;

   do {
    v = ep93xx_ac97_read_reg(info, AC97SR(1));
    if (time_after(jiffies, timeout)) {
     dev_warn(info->dev, "TX timeout\n");
     break;
    }
   } while (!(v & (AC97SR_TXFE | AC97SR_TXUE)));


   ep93xx_ac97_write_reg(info, AC97TXCR(1), 0);
  } else {

   ep93xx_ac97_write_reg(info, AC97RXCR(1), 0);
  }
  break;

 default:
  dev_warn(info->dev, "unknown command %d\n", cmd);
  return -EINVAL;
 }

 return 0;
}
