
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct snd_intelhad {int connected; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int buffer_size; } ;


 int SNDRV_PCM_POS_XRUN ;
 int bytes_to_frames (TYPE_1__*,int) ;
 int had_process_ringbuf (struct snd_pcm_substream*,struct snd_intelhad*) ;
 struct snd_intelhad* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_uframes_t had_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_intelhad *intelhaddata;
 int len;

 intelhaddata = snd_pcm_substream_chip(substream);

 if (!intelhaddata->connected)
  return SNDRV_PCM_POS_XRUN;

 len = had_process_ringbuf(substream, intelhaddata);
 if (len < 0)
  return SNDRV_PCM_POS_XRUN;
 len = bytes_to_frames(substream->runtime, len);

 len %= substream->runtime->buffer_size;
 return len;
}
