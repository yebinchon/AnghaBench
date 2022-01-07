
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_caiaqdev {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;


 int deactivate_substream (struct snd_usb_caiaqdev*,struct snd_pcm_substream*) ;
 int snd_pcm_lib_free_vmalloc_buffer (struct snd_pcm_substream*) ;
 struct snd_usb_caiaqdev* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_usb_caiaq_pcm_hw_free(struct snd_pcm_substream *sub)
{
 struct snd_usb_caiaqdev *cdev = snd_pcm_substream_chip(sub);
 deactivate_substream(cdev, sub);
 return snd_pcm_lib_free_vmalloc_buffer(sub);
}
