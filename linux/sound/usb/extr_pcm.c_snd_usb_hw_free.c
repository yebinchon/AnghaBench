
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_substream {TYPE_1__* stream; int data_endpoint; int sync_endpoint; scalar_t__ period_bytes; scalar_t__ cur_rate; int * cur_audiofmt; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_4__ {struct snd_usb_substream* private_data; } ;
struct TYPE_3__ {int chip; } ;


 int snd_media_stop_pipeline (struct snd_usb_substream*) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 int snd_pcm_lib_free_vmalloc_buffer (struct snd_pcm_substream*) ;
 int snd_usb_endpoint_deactivate (int ) ;
 int snd_usb_lock_shutdown (int ) ;
 int snd_usb_unlock_shutdown (int ) ;
 scalar_t__ snd_usb_use_vmalloc ;
 int stop_endpoints (struct snd_usb_substream*,int) ;

__attribute__((used)) static int snd_usb_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_usb_substream *subs = substream->runtime->private_data;

 snd_media_stop_pipeline(subs);
 subs->cur_audiofmt = ((void*)0);
 subs->cur_rate = 0;
 subs->period_bytes = 0;
 if (!snd_usb_lock_shutdown(subs->stream->chip)) {
  stop_endpoints(subs, 1);
  snd_usb_endpoint_deactivate(subs->sync_endpoint);
  snd_usb_endpoint_deactivate(subs->data_endpoint);
  snd_usb_unlock_shutdown(subs->stream->chip);
 }

 if (snd_usb_use_vmalloc)
  return snd_pcm_lib_free_vmalloc_buffer(substream);
 else
  return snd_pcm_lib_free_pages(substream);
}
