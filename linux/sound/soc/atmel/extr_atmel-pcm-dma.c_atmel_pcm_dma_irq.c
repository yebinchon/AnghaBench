
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_soc_pcm_runtime {int cpu_dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct atmel_pcm_dma_params {TYPE_2__* ssc; TYPE_1__* mask; int name; } ;
struct TYPE_4__ {int regs; } ;
struct TYPE_3__ {int ssc_error; int ssc_disable; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int SSC_CR ;
 int SSC_RHR ;
 int SSC_SR ;
 int pr_warn (char*,char*,int ,int) ;
 scalar_t__ snd_pcm_running (struct snd_pcm_substream*) ;
 int snd_pcm_stop_xrun (struct snd_pcm_substream*) ;
 struct atmel_pcm_dma_params* snd_soc_dai_get_dma_data (int ,struct snd_pcm_substream*) ;
 int ssc_readx (int ,int ) ;
 int ssc_writex (int ,int ,int ) ;

__attribute__((used)) static void atmel_pcm_dma_irq(u32 ssc_sr,
 struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct atmel_pcm_dma_params *prtd;

 prtd = snd_soc_dai_get_dma_data(rtd->cpu_dai, substream);

 if (ssc_sr & prtd->mask->ssc_error) {
  if (snd_pcm_running(substream))
   pr_warn("atmel-pcm: buffer %s on %s (SSC_SR=%#x)\n",
    substream->stream == SNDRV_PCM_STREAM_PLAYBACK
    ? "underrun" : "overrun", prtd->name,
    ssc_sr);


  ssc_writex(prtd->ssc->regs, SSC_CR, prtd->mask->ssc_disable);
  snd_pcm_stop_xrun(substream);


  ssc_readx(prtd->ssc->regs, SSC_RHR);
  ssc_readx(prtd->ssc->regs, SSC_SR);
 }
}
