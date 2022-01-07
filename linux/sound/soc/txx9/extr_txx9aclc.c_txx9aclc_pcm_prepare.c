
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9aclc_dmadata {int buffer_bytes; int period_bytes; int frag_bytes; int frags; scalar_t__ pos; scalar_t__ frag_count; int dma_addr; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; struct txx9aclc_dmadata* private_data; } ;


 int snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 int snd_pcm_lib_period_bytes (struct snd_pcm_substream*) ;

__attribute__((used)) static int txx9aclc_pcm_prepare(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct txx9aclc_dmadata *dmadata = runtime->private_data;

 dmadata->dma_addr = runtime->dma_addr;
 dmadata->buffer_bytes = snd_pcm_lib_buffer_bytes(substream);
 dmadata->period_bytes = snd_pcm_lib_period_bytes(substream);

 if (dmadata->buffer_bytes == dmadata->period_bytes) {
  dmadata->frag_bytes = dmadata->period_bytes >> 1;
  dmadata->frags = 2;
 } else {
  dmadata->frag_bytes = dmadata->period_bytes;
  dmadata->frags = dmadata->buffer_bytes / dmadata->period_bytes;
 }
 dmadata->frag_count = 0;
 dmadata->pos = 0;
 return 0;
}
