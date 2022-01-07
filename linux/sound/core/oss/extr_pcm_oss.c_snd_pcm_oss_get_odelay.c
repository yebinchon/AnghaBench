
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {scalar_t__ prepare; scalar_t__ params; } ;
struct snd_pcm_runtime {TYPE_1__ oss; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;
typedef scalar_t__ snd_pcm_sframes_t ;


 int EINVAL ;
 int EPIPE ;
 int SNDRV_PCM_IOCTL_DELAY ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int ,scalar_t__*) ;
 int snd_pcm_oss_bytes (struct snd_pcm_substream*,scalar_t__) ;
 int snd_pcm_oss_make_ready (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_oss_get_odelay(struct snd_pcm_oss_file *pcm_oss_file)
{
 struct snd_pcm_substream *substream;
 struct snd_pcm_runtime *runtime;
 snd_pcm_sframes_t delay;
 int err;

 substream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
 if (substream == ((void*)0))
  return -EINVAL;
 if ((err = snd_pcm_oss_make_ready(substream)) < 0)
  return err;
 runtime = substream->runtime;
 if (runtime->oss.params || runtime->oss.prepare)
  return 0;
 err = snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_DELAY, &delay);
 if (err == -EPIPE)
  delay = 0;
 else if (err < 0)
  return err;
 return snd_pcm_oss_bytes(substream, delay);
}
