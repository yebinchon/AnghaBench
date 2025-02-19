
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_priv {scalar_t__ extclk; struct ssp_device* ssp; } ;
struct ssp_device {scalar_t__ clk; } ;
struct snd_soc_dai {int active; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_dmaengine_dai_dma_data {char* chan_name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int clk_prepare_enable (scalar_t__) ;
 struct snd_dmaengine_dai_dma_data* kzalloc (int,int ) ;
 int pxa_ssp_disable (struct ssp_device*) ;
 struct ssp_priv* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int snd_soc_dai_set_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*,struct snd_dmaengine_dai_dma_data*) ;

__attribute__((used)) static int pxa_ssp_startup(struct snd_pcm_substream *substream,
      struct snd_soc_dai *cpu_dai)
{
 struct ssp_priv *priv = snd_soc_dai_get_drvdata(cpu_dai);
 struct ssp_device *ssp = priv->ssp;
 struct snd_dmaengine_dai_dma_data *dma;
 int ret = 0;

 if (!cpu_dai->active) {
  clk_prepare_enable(ssp->clk);
  pxa_ssp_disable(ssp);
 }

 if (priv->extclk)
  clk_prepare_enable(priv->extclk);

 dma = kzalloc(sizeof(struct snd_dmaengine_dai_dma_data), GFP_KERNEL);
 if (!dma)
  return -ENOMEM;
 dma->chan_name = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ?
  "tx" : "rx";

 snd_soc_dai_set_dma_data(cpu_dai, substream, dma);

 return ret;
}
