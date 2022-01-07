
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct snd_pcm_hw_params {unsigned int fifo_size; } ;
typedef scalar_t__ ssize_t ;
typedef int snd_pcm_format_t ;
struct TYPE_3__ {unsigned int fifo_size; int info; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 int SNDRV_PCM_INFO_FIFO_IN_FRAMES ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 scalar_t__ snd_pcm_format_size (int ,int) ;

__attribute__((used)) static int snd_pcm_lib_ioctl_fifo_size(struct snd_pcm_substream *substream,
           void *arg)
{
 struct snd_pcm_hw_params *params = arg;
 snd_pcm_format_t format;
 int channels;
 ssize_t frame_size;

 params->fifo_size = substream->runtime->hw.fifo_size;
 if (!(substream->runtime->hw.info & SNDRV_PCM_INFO_FIFO_IN_FRAMES)) {
  format = params_format(params);
  channels = params_channels(params);
  frame_size = snd_pcm_format_size(format, channels);
  if (frame_size > 0)
   params->fifo_size /= (unsigned)frame_size;
 }
 return 0;
}
