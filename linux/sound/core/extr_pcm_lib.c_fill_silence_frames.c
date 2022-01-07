
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {scalar_t__ access; } ;


 scalar_t__ SNDRV_PCM_ACCESS_MMAP_INTERLEAVED ;
 scalar_t__ SNDRV_PCM_ACCESS_RW_INTERLEAVED ;
 int fill_silence ;
 int interleaved_copy (struct snd_pcm_substream*,int ,int *,int ,int ,int ) ;
 int noninterleaved_copy (struct snd_pcm_substream*,int ,int *,int ,int ,int ) ;

__attribute__((used)) static int fill_silence_frames(struct snd_pcm_substream *substream,
          snd_pcm_uframes_t off, snd_pcm_uframes_t frames)
{
 if (substream->runtime->access == SNDRV_PCM_ACCESS_RW_INTERLEAVED ||
     substream->runtime->access == SNDRV_PCM_ACCESS_MMAP_INTERLEAVED)
  return interleaved_copy(substream, off, ((void*)0), 0, frames,
     fill_silence);
 else
  return noninterleaved_copy(substream, off, ((void*)0), 0, frames,
        fill_silence);
}
