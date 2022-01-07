
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_usb_substream {size_t direction; TYPE_4__* dev; TYPE_1__* stream; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm {TYPE_2__* streams; } ;
struct device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* bus; } ;
struct TYPE_7__ {struct device* controller; } ;
struct TYPE_6__ {struct snd_pcm_substream* substream; } ;
struct TYPE_5__ {struct snd_pcm* pcm; } ;


 int SNDRV_DMA_TYPE_DEV_SG ;
 int snd_pcm_lib_preallocate_pages (struct snd_pcm_substream*,int ,struct device*,int,int) ;
 int snd_usb_use_vmalloc ;

void snd_usb_preallocate_buffer(struct snd_usb_substream *subs)
{
 struct snd_pcm *pcm = subs->stream->pcm;
 struct snd_pcm_substream *s = pcm->streams[subs->direction].substream;
 struct device *dev = subs->dev->bus->controller;

 if (!snd_usb_use_vmalloc)
  snd_pcm_lib_preallocate_pages(s, SNDRV_DMA_TYPE_DEV_SG,
           dev, 64*1024, 512*1024);
}
