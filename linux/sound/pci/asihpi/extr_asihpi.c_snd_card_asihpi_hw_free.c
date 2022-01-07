
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_card_asihpi_pcm* private_data; } ;
struct snd_card_asihpi_pcm {int h_stream; scalar_t__ hpi_buffer_attached; } ;


 int hpi_stream_host_buffer_detach (int ) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;

__attribute__((used)) static int
snd_card_asihpi_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_card_asihpi_pcm *dpcm = runtime->private_data;
 if (dpcm->hpi_buffer_attached)
  hpi_stream_host_buffer_detach(dpcm->h_stream);

 snd_pcm_lib_free_pages(substream);
 return 0;
}
