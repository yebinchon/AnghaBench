
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {long buffer_bytes; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;


 long bytes_to_frames (struct snd_pcm_runtime*,long) ;
 long snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;

__attribute__((used)) static long snd_pcm_alsa_frames(struct snd_pcm_substream *substream, long bytes)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 long buffer_size = snd_pcm_lib_buffer_bytes(substream);
 if (buffer_size == runtime->oss.buffer_bytes)
  return bytes_to_frames(runtime, bytes);
 return bytes_to_frames(runtime, (buffer_size * bytes) / runtime->oss.buffer_bytes);
}
