
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ dma_area; } ;
struct amdtp_stream {unsigned int pcm_buffer_pointer; int data_block_quadlets; struct amdtp_dot* protocol; } ;
struct amdtp_dot {unsigned int pcm_channels; int state; } ;
typedef int __be32 ;


 int cpu_to_be32 (int const) ;
 int dot_encode_step (int *,int *) ;
 int frames_to_bytes (struct snd_pcm_runtime*,unsigned int) ;

__attribute__((used)) static void write_pcm_s32(struct amdtp_stream *s, struct snd_pcm_substream *pcm,
     __be32 *buffer, unsigned int frames,
     unsigned int pcm_frames)
{
 struct amdtp_dot *p = s->protocol;
 unsigned int channels = p->pcm_channels;
 struct snd_pcm_runtime *runtime = pcm->runtime;
 unsigned int pcm_buffer_pointer;
 int remaining_frames;
 const u32 *src;
 int i, c;

 pcm_buffer_pointer = s->pcm_buffer_pointer + pcm_frames;
 pcm_buffer_pointer %= runtime->buffer_size;

 src = (void *)runtime->dma_area +
    frames_to_bytes(runtime, pcm_buffer_pointer);
 remaining_frames = runtime->buffer_size - pcm_buffer_pointer;

 buffer++;
 for (i = 0; i < frames; ++i) {
  for (c = 0; c < channels; ++c) {
   buffer[c] = cpu_to_be32((*src >> 8) | 0x40000000);
   dot_encode_step(&p->state, &buffer[c]);
   src++;
  }
  buffer += s->data_block_quadlets;
  if (--remaining_frames == 0)
   src = (void *)runtime->dma_area;
 }
}
