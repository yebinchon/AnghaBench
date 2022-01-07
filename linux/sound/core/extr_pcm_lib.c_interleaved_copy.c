
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
typedef int snd_pcm_uframes_t ;
typedef int (* pcm_transfer_f ) (struct snd_pcm_substream*,int ,int ,void*,int ) ;


 int frames_to_bytes (struct snd_pcm_runtime*,int ) ;

__attribute__((used)) static int interleaved_copy(struct snd_pcm_substream *substream,
       snd_pcm_uframes_t hwoff, void *data,
       snd_pcm_uframes_t off,
       snd_pcm_uframes_t frames,
       pcm_transfer_f transfer)
{
 struct snd_pcm_runtime *runtime = substream->runtime;


 hwoff = frames_to_bytes(runtime, hwoff);
 off = frames_to_bytes(runtime, off);
 frames = frames_to_bytes(runtime, frames);
 return transfer(substream, 0, hwoff, data + off, frames);
}
