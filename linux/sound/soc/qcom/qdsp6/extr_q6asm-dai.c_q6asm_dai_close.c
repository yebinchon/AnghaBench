
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* dai_link; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct q6asm_dai_rtd* private_data; } ;
struct q6asm_dai_rtd {int * audio_client; scalar_t__ state; } ;
struct TYPE_2__ {int id; } ;


 int CMD_CLOSE ;
 int kfree (struct q6asm_dai_rtd*) ;
 int q6asm_audio_client_free (int *) ;
 int q6asm_cmd (int *,int ) ;
 int q6asm_unmap_memory_regions (int ,int *) ;
 int q6routing_stream_close (int ,int ) ;

__attribute__((used)) static int q6asm_dai_close(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *soc_prtd = substream->private_data;
 struct q6asm_dai_rtd *prtd = runtime->private_data;

 if (prtd->audio_client) {
  if (prtd->state)
   q6asm_cmd(prtd->audio_client, CMD_CLOSE);

  q6asm_unmap_memory_regions(substream->stream,
        prtd->audio_client);
  q6asm_audio_client_free(prtd->audio_client);
  prtd->audio_client = ((void*)0);
 }
 q6routing_stream_close(soc_prtd->dai_link->id,
      substream->stream);
 kfree(prtd);
 return 0;
}
