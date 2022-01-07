
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct rk_i2s_dev {int dummy; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_CAPTURE ;






 int rockchip_snd_rxctrl (struct rk_i2s_dev*,int) ;
 int rockchip_snd_txctrl (struct rk_i2s_dev*,int) ;
 struct rk_i2s_dev* to_info (struct snd_soc_dai*) ;

__attribute__((used)) static int rockchip_i2s_trigger(struct snd_pcm_substream *substream,
    int cmd, struct snd_soc_dai *dai)
{
 struct rk_i2s_dev *i2s = to_info(dai);
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   rockchip_snd_rxctrl(i2s, 1);
  else
   rockchip_snd_txctrl(i2s, 1);
  break;
 case 128:
 case 129:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   rockchip_snd_rxctrl(i2s, 0);
  else
   rockchip_snd_txctrl(i2s, 0);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
