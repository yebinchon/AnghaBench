
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int ENXIO ;



 int snd_pcm_lib_ioctl_channel_info (struct snd_pcm_substream*,void*) ;
 int snd_pcm_lib_ioctl_fifo_size (struct snd_pcm_substream*,void*) ;
 int snd_pcm_lib_ioctl_reset (struct snd_pcm_substream*,void*) ;

int snd_pcm_lib_ioctl(struct snd_pcm_substream *substream,
        unsigned int cmd, void *arg)
{
 switch (cmd) {
 case 128:
  return snd_pcm_lib_ioctl_reset(substream, arg);
 case 130:
  return snd_pcm_lib_ioctl_channel_info(substream, arg);
 case 129:
  return snd_pcm_lib_ioctl_fifo_size(substream, arg);
 }
 return -ENXIO;
}
