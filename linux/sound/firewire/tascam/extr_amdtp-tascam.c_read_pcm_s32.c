
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ dma_area; } ;
struct amdtp_tscm {unsigned int pcm_channels; } ;
struct amdtp_stream {unsigned int pcm_buffer_pointer; int data_block_quadlets; struct amdtp_tscm* protocol; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int frames_to_bytes (struct snd_pcm_runtime*,unsigned int) ;

__attribute__((used)) static void read_pcm_s32(struct amdtp_stream *s, struct snd_pcm_substream *pcm,
    __be32 *buffer, unsigned int frames,
    unsigned int pcm_frames)
{
 struct amdtp_tscm *p = s->protocol;
 unsigned int channels = p->pcm_channels;
 struct snd_pcm_runtime *runtime = pcm->runtime;
 unsigned int pcm_buffer_pointer;
 int remaining_frames;
 u32 *dst;
 int i, c;

 pcm_buffer_pointer = s->pcm_buffer_pointer + pcm_frames;
 pcm_buffer_pointer %= runtime->buffer_size;

 dst = (void *)runtime->dma_area +
    frames_to_bytes(runtime, pcm_buffer_pointer);
 remaining_frames = runtime->buffer_size - pcm_buffer_pointer;


 buffer += 1;

 for (i = 0; i < frames; ++i) {
  for (c = 0; c < channels; ++c) {
   *dst = be32_to_cpu(buffer[c]);
   dst++;
  }
  buffer += s->data_block_quadlets;
  if (--remaining_frames == 0)
   dst = (void *)runtime->dma_area;
 }
}
