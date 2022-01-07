
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;


 int EINVAL ;
 int SNDRV_PCM_STREAM_CAPTURE ;






 int s3c24xx_snd_is_clkmaster () ;
 int s3c24xx_snd_lrsync () ;
 int s3c24xx_snd_rxctrl (int) ;
 int s3c24xx_snd_txctrl (int) ;

__attribute__((used)) static int s3c24xx_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
          struct snd_soc_dai *dai)
{
 int ret = 0;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (!s3c24xx_snd_is_clkmaster()) {
   ret = s3c24xx_snd_lrsync();
   if (ret)
    goto exit_err;
  }

  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   s3c24xx_snd_rxctrl(1);
  else
   s3c24xx_snd_txctrl(1);

  break;
 case 129:
 case 128:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
   s3c24xx_snd_rxctrl(0);
  else
   s3c24xx_snd_txctrl(0);
  break;
 default:
  ret = -EINVAL;
  break;
 }

exit_err:
 return ret;
}
