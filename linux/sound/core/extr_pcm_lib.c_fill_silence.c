
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* ops; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int format; } ;
struct TYPE_2__ {int (* fill_silence ) (struct snd_pcm_substream*,int,unsigned long,unsigned long) ;} ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bytes_to_samples (struct snd_pcm_runtime*,unsigned long) ;
 int get_dma_ptr (struct snd_pcm_runtime*,int,unsigned long) ;
 int snd_pcm_format_set_silence (int ,int ,int ) ;
 int stub1 (struct snd_pcm_substream*,int,unsigned long,unsigned long) ;

__attribute__((used)) static int fill_silence(struct snd_pcm_substream *substream, int channel,
   unsigned long hwoff, void *buf, unsigned long bytes)
{
 struct snd_pcm_runtime *runtime = substream->runtime;

 if (substream->stream != SNDRV_PCM_STREAM_PLAYBACK)
  return 0;
 if (substream->ops->fill_silence)
  return substream->ops->fill_silence(substream, channel,
          hwoff, bytes);

 snd_pcm_format_set_silence(runtime->format,
       get_dma_ptr(runtime, channel, hwoff),
       bytes_to_samples(runtime, bytes));
 return 0;
}
