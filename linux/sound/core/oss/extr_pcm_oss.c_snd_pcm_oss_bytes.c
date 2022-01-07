
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {long buffer_bytes; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;


 long div_u64 (int,long) ;
 long frames_to_bytes (struct snd_pcm_runtime*,long) ;
 long snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;

__attribute__((used)) static long snd_pcm_oss_bytes(struct snd_pcm_substream *substream, long frames)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 long buffer_size = snd_pcm_lib_buffer_bytes(substream);
 long bytes = frames_to_bytes(runtime, frames);
 if (buffer_size == runtime->oss.buffer_bytes)
  return bytes;



 {
  u64 bsize = (u64)runtime->oss.buffer_bytes * (u64)bytes;
  return div_u64(bsize, buffer_size);
 }

}
