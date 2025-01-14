
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_dmaengine_dai_dma_data {int maxburst; } ;
struct omap_mcpdm {int* latency; int restart; TYPE_1__* config; } ;
struct TYPE_2__ {int threshold; int link_mask; } ;


 int EINVAL ;
 int MCPDM_DN_THRES_MAX ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int USEC_PER_SEC ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 struct snd_dmaengine_dai_dma_data* snd_soc_dai_get_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*) ;
 struct omap_mcpdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcpdm_dai_hw_params(struct snd_pcm_substream *substream,
        struct snd_pcm_hw_params *params,
        struct snd_soc_dai *dai)
{
 struct omap_mcpdm *mcpdm = snd_soc_dai_get_drvdata(dai);
 int stream = substream->stream;
 struct snd_dmaengine_dai_dma_data *dma_data;
 u32 threshold;
 int channels, latency;
 int link_mask = 0;

 channels = params_channels(params);
 switch (channels) {
 case 5:
  if (stream == SNDRV_PCM_STREAM_CAPTURE)

   return -EINVAL;
  link_mask |= 1 << 4;

 case 4:
  if (stream == SNDRV_PCM_STREAM_CAPTURE)

   return -EINVAL;
  link_mask |= 1 << 3;

 case 3:
  link_mask |= 1 << 2;

 case 2:
  link_mask |= 1 << 1;

 case 1:
  link_mask |= 1 << 0;
  break;
 default:

  return -EINVAL;
 }

 dma_data = snd_soc_dai_get_dma_data(dai, substream);

 threshold = mcpdm->config[stream].threshold;

 if (stream == SNDRV_PCM_STREAM_PLAYBACK) {
  link_mask <<= 3;


  if (!mcpdm->config[!stream].link_mask)
   mcpdm->config[!stream].link_mask = 0x3;

  dma_data->maxburst =
    (MCPDM_DN_THRES_MAX - threshold) * channels;
  latency = threshold;
 } else {

  if (!mcpdm->config[!stream].link_mask)
   mcpdm->config[!stream].link_mask = (0x3 << 3);

  dma_data->maxburst = threshold * channels;
  latency = (MCPDM_DN_THRES_MAX - threshold);
 }





 mcpdm->latency[stream] = latency * USEC_PER_SEC / params_rate(params);

 if (!mcpdm->latency[stream])
  mcpdm->latency[stream] = 10;


 if (mcpdm->config[stream].link_mask &&
     mcpdm->config[stream].link_mask != link_mask)
  mcpdm->restart = 1;

 mcpdm->config[stream].link_mask = link_mask;

 return 0;
}
