
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int stream; } ;
struct pm_qos_request {int dummy; } ;
struct omap_mcpdm {int* latency; int restart; struct pm_qos_request pm_qos_req; } ;


 int PM_QOS_CPU_DMA_LATENCY ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 int omap_mcpdm_active (struct omap_mcpdm*) ;
 int omap_mcpdm_reg_dump (struct omap_mcpdm*) ;
 int omap_mcpdm_start (struct omap_mcpdm*) ;
 int omap_mcpdm_stop (struct omap_mcpdm*) ;
 int pm_qos_add_request (struct pm_qos_request*,int ,int) ;
 scalar_t__ pm_qos_request_active (struct pm_qos_request*) ;
 int pm_qos_update_request (struct pm_qos_request*,int) ;
 struct omap_mcpdm* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcpdm_prepare(struct snd_pcm_substream *substream,
      struct snd_soc_dai *dai)
{
 struct omap_mcpdm *mcpdm = snd_soc_dai_get_drvdata(dai);
 struct pm_qos_request *pm_qos_req = &mcpdm->pm_qos_req;
 int tx = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK);
 int stream1 = tx ? SNDRV_PCM_STREAM_PLAYBACK : SNDRV_PCM_STREAM_CAPTURE;
 int stream2 = tx ? SNDRV_PCM_STREAM_CAPTURE : SNDRV_PCM_STREAM_PLAYBACK;
 int latency = mcpdm->latency[stream2];


 if (!latency || mcpdm->latency[stream1] < latency)
  latency = mcpdm->latency[stream1];

 if (pm_qos_request_active(pm_qos_req))
  pm_qos_update_request(pm_qos_req, latency);
 else if (latency)
  pm_qos_add_request(pm_qos_req, PM_QOS_CPU_DMA_LATENCY, latency);

 if (!omap_mcpdm_active(mcpdm)) {
  omap_mcpdm_start(mcpdm);
  omap_mcpdm_reg_dump(mcpdm);
 } else if (mcpdm->restart) {
  omap_mcpdm_stop(mcpdm);
  omap_mcpdm_start(mcpdm);
  mcpdm->restart = 0;
  omap_mcpdm_reg_dump(mcpdm);
 }

 return 0;
}
