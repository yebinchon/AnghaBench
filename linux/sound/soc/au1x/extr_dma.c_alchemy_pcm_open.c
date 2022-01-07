
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct alchemy_pcm_ctx {TYPE_1__* stream; } ;
struct TYPE_2__ {int * buffer; struct snd_pcm_substream* substream; int dma; } ;


 int DMA_NC ;
 int ENODEV ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int alchemy_pcm_hardware ;
 int au1000_dma_interrupt ;
 int get_dma_mode (int ) ;
 int request_au1000_dma (int,char*,int ,int ,TYPE_1__*) ;
 int set_dma_mode (int ,int) ;
 int* snd_soc_dai_get_dma_data (int ,struct snd_pcm_substream*) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;
 struct alchemy_pcm_ctx* ss_to_ctx (struct snd_pcm_substream*) ;

__attribute__((used)) static int alchemy_pcm_open(struct snd_pcm_substream *substream)
{
 struct alchemy_pcm_ctx *ctx = ss_to_ctx(substream);
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 int *dmaids, s = substream->stream;
 char *name;

 dmaids = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);
 if (!dmaids)
  return -ENODEV;


 name = (s == SNDRV_PCM_STREAM_PLAYBACK) ? "audio-tx" : "audio-rx";
 ctx->stream[s].dma = request_au1000_dma(dmaids[s], name,
     au1000_dma_interrupt, 0,
     &ctx->stream[s]);
 set_dma_mode(ctx->stream[s].dma,
       get_dma_mode(ctx->stream[s].dma) & ~DMA_NC);

 ctx->stream[s].substream = substream;
 ctx->stream[s].buffer = ((void*)0);
 snd_soc_set_runtime_hwparams(substream, &alchemy_pcm_hardware);

 return 0;
}
