
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_oss_file {struct snd_pcm_substream** streams; } ;


 int SNDRV_PCM_IOCTL_START ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int snd_pcm_kernel_ioctl (struct snd_pcm_substream*,int ,int *) ;
 int snd_pcm_oss_make_ready (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_oss_post(struct snd_pcm_oss_file *pcm_oss_file)
{
 struct snd_pcm_substream *substream;
 int err;

 substream = pcm_oss_file->streams[SNDRV_PCM_STREAM_PLAYBACK];
 if (substream != ((void*)0)) {
  if ((err = snd_pcm_oss_make_ready(substream)) < 0)
   return err;
  snd_pcm_kernel_ioctl(substream, SNDRV_PCM_IOCTL_START, ((void*)0));
 }


 return 0;
}
