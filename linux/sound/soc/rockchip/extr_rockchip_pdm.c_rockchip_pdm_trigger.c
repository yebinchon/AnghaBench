
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct rk_pdm_dev {int dummy; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_CAPTURE ;






 int rockchip_pdm_rxctrl (struct rk_pdm_dev*,int) ;
 struct rk_pdm_dev* to_info (struct snd_soc_dai*) ;

__attribute__((used)) static int rockchip_pdm_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 struct rk_pdm_dev *pdm = to_info(dai);
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   rockchip_pdm_rxctrl(pdm, 1);
  break;
 case 128:
 case 129:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   rockchip_pdm_rxctrl(pdm, 0);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
