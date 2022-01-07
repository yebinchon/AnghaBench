
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct TYPE_4__ {scalar_t__ addr; int * area; } ;
struct snd_pcm_substream {TYPE_2__ dma_buffer; } ;
struct snd_pcm {TYPE_1__* streams; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_3__ {struct snd_pcm_substream* substream; } ;


 int DRV_NAME ;
 int dev_dbg (int ,char*,struct snd_pcm*) ;
 int snd_dma_free_pages (TYPE_2__*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static void psc_dma_free(struct snd_pcm *pcm)
{
 struct snd_soc_pcm_runtime *rtd = pcm->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_pcm_substream *substream;
 int stream;

 dev_dbg(component->dev, "psc_dma_free(pcm=%p)\n", pcm);

 for (stream = 0; stream < 2; stream++) {
  substream = pcm->streams[stream].substream;
  if (substream) {
   snd_dma_free_pages(&substream->dma_buffer);
   substream->dma_buffer.area = ((void*)0);
   substream->dma_buffer.addr = 0;
  }
 }
}
