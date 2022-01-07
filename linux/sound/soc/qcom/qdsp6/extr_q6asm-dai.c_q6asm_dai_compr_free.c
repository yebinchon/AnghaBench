
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_compr_stream {int direction; struct snd_soc_pcm_runtime* private_data; struct snd_compr_runtime* runtime; } ;
struct snd_compr_runtime {struct q6asm_dai_rtd* private_data; } ;
struct q6asm_dai_rtd {int * audio_client; int dma_buffer; scalar_t__ state; } ;
struct TYPE_2__ {int id; } ;


 int CMD_CLOSE ;
 int kfree (struct q6asm_dai_rtd*) ;
 int q6asm_audio_client_free (int *) ;
 int q6asm_cmd (int *,int ) ;
 int q6asm_unmap_memory_regions (int ,int *) ;
 int q6routing_stream_close (int ,int ) ;
 int snd_dma_free_pages (int *) ;

__attribute__((used)) static int q6asm_dai_compr_free(struct snd_compr_stream *stream)
{
 struct snd_compr_runtime *runtime = stream->runtime;
 struct q6asm_dai_rtd *prtd = runtime->private_data;
 struct snd_soc_pcm_runtime *rtd = stream->private_data;

 if (prtd->audio_client) {
  if (prtd->state)
   q6asm_cmd(prtd->audio_client, CMD_CLOSE);

  snd_dma_free_pages(&prtd->dma_buffer);
  q6asm_unmap_memory_regions(stream->direction,
        prtd->audio_client);
  q6asm_audio_client_free(prtd->audio_client);
  prtd->audio_client = ((void*)0);
 }
 q6routing_stream_close(rtd->dai_link->id, stream->direction);
 kfree(prtd);

 return 0;
}
