
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;




 int snd_hdsp_channel_info (struct snd_pcm_substream*,void*) ;
 int snd_hdsp_reset (struct snd_pcm_substream*) ;
 int snd_pcm_lib_ioctl (struct snd_pcm_substream*,unsigned int,void*) ;

__attribute__((used)) static int snd_hdsp_ioctl(struct snd_pcm_substream *substream,
        unsigned int cmd, void *arg)
{
 switch (cmd) {
 case 128:
  return snd_hdsp_reset(substream);
 case 129:
  return snd_hdsp_channel_info(substream, arg);
 default:
  break;
 }

 return snd_pcm_lib_ioctl(substream, cmd, arg);
}
