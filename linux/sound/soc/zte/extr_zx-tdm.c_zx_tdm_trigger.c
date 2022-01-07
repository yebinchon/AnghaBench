
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tdm_info {int dummy; } ;
struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;


 int EINVAL ;
 unsigned int FIFOCTRL_RX_FIFO_RST ;
 unsigned int FIFOCTRL_TX_FIFO_RST ;
 int REG_RX_FIFO_CTRL ;
 int REG_TX_FIFO_CTRL ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;






 struct zx_tdm_info* dev_get_drvdata (int ) ;
 unsigned int zx_tdm_readl (struct zx_tdm_info*,int ) ;
 int zx_tdm_rx_dma_en (struct zx_tdm_info*,int) ;
 int zx_tdm_rx_en (struct zx_tdm_info*,int) ;
 int zx_tdm_tx_dma_en (struct zx_tdm_info*,int) ;
 int zx_tdm_tx_en (struct zx_tdm_info*,int) ;
 int zx_tdm_writel (struct zx_tdm_info*,int ,unsigned int) ;

__attribute__((used)) static int zx_tdm_trigger(struct snd_pcm_substream *substream, int cmd,
     struct snd_soc_dai *dai)
{
 int capture = (substream->stream == SNDRV_PCM_STREAM_CAPTURE);
 struct zx_tdm_info *zx_tdm = dev_get_drvdata(dai->dev);
 unsigned int val;
 int ret = 0;

 switch (cmd) {
 case 130:
  if (capture) {
   val = zx_tdm_readl(zx_tdm, REG_RX_FIFO_CTRL);
   val |= FIFOCTRL_RX_FIFO_RST;
   zx_tdm_writel(zx_tdm, REG_RX_FIFO_CTRL, val);

   zx_tdm_rx_dma_en(zx_tdm, 1);
  } else {
   val = zx_tdm_readl(zx_tdm, REG_TX_FIFO_CTRL);
   val |= FIFOCTRL_TX_FIFO_RST;
   zx_tdm_writel(zx_tdm, REG_TX_FIFO_CTRL, val);

   zx_tdm_tx_dma_en(zx_tdm, 1);
  }
  break;
 case 131:
 case 132:
  if (capture)
   zx_tdm_rx_en(zx_tdm, 1);
  else
   zx_tdm_tx_en(zx_tdm, 1);
  break;
 case 129:
  if (capture)
   zx_tdm_rx_dma_en(zx_tdm, 0);
  else
   zx_tdm_tx_dma_en(zx_tdm, 0);
  break;
 case 128:
 case 133:
  if (capture)
   zx_tdm_rx_en(zx_tdm, 0);
  else
   zx_tdm_tx_en(zx_tdm, 0);
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
