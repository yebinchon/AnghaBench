
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_i2s_info {int reg_base; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;






 struct zx_i2s_info* dev_get_drvdata (int ) ;
 int zx_i2s_rx_dma_en (int ,int) ;
 int zx_i2s_rx_en (int ,int) ;
 int zx_i2s_tx_dma_en (int ,int) ;
 int zx_i2s_tx_en (int ,int) ;

__attribute__((used)) static int zx_i2s_trigger(struct snd_pcm_substream *substream, int cmd,
     struct snd_soc_dai *dai)
{
 struct zx_i2s_info *zx_i2s = dev_get_drvdata(dai->dev);
 int capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);
 int ret = 0;

 switch (cmd) {
 case 130:
  if (capture)
   zx_i2s_rx_dma_en(zx_i2s->reg_base, 1);
  else
   zx_i2s_tx_dma_en(zx_i2s->reg_base, 1);

 case 131:
 case 132:
  if (capture)
   zx_i2s_rx_en(zx_i2s->reg_base, 1);
  else
   zx_i2s_tx_en(zx_i2s->reg_base, 1);
  break;

 case 129:
  if (capture)
   zx_i2s_rx_dma_en(zx_i2s->reg_base, 0);
  else
   zx_i2s_tx_dma_en(zx_i2s->reg_base, 0);

 case 128:
 case 133:
  if (capture)
   zx_i2s_rx_en(zx_i2s->reg_base, 0);
  else
   zx_i2s_tx_en(zx_i2s->reg_base, 0);
  break;

 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
