
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_substream {int interface; TYPE_2__* stream; int * pcm_substream; int dev; } ;
struct snd_usb_stream {TYPE_1__* chip; struct snd_usb_substream* substream; } ;
struct snd_pcm_substream {int stream; } ;
struct TYPE_4__ {int chip; } ;
struct TYPE_3__ {int keep_iface; } ;


 int UAC3_PD_STATE_D1 ;
 int snd_media_stop_pipeline (struct snd_usb_substream*) ;
 struct snd_usb_stream* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_usb_autosuspend (int ) ;
 int snd_usb_lock_shutdown (int ) ;
 int snd_usb_pcm_change_state (struct snd_usb_substream*,int ) ;
 int snd_usb_unlock_shutdown (int ) ;
 int stop_endpoints (struct snd_usb_substream*,int) ;
 int usb_set_interface (int ,int,int ) ;

__attribute__((used)) static int snd_usb_pcm_close(struct snd_pcm_substream *substream)
{
 int direction = substream->stream;
 struct snd_usb_stream *as = snd_pcm_substream_chip(substream);
 struct snd_usb_substream *subs = &as->substream[direction];
 int ret;

 stop_endpoints(subs, 1);
 snd_media_stop_pipeline(subs);

 if (!as->chip->keep_iface &&
     subs->interface >= 0 &&
     !snd_usb_lock_shutdown(subs->stream->chip)) {
  usb_set_interface(subs->dev, subs->interface, 0);
  subs->interface = -1;
  ret = snd_usb_pcm_change_state(subs, UAC3_PD_STATE_D1);
  snd_usb_unlock_shutdown(subs->stream->chip);
  if (ret < 0)
   return ret;
 }

 subs->pcm_substream = ((void*)0);
 snd_usb_autosuspend(subs->stream->chip);

 return 0;
}
