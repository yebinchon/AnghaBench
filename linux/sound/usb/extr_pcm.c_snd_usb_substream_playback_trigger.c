
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_usb_substream {int trigger_tstamp_pending_update; int running; TYPE_1__* data_endpoint; } ;
struct snd_pcm_substream {TYPE_2__* runtime; } ;
struct TYPE_4__ {struct snd_usb_substream* private_data; } ;
struct TYPE_3__ {void* retire_data_urb; int * prepare_data_urb; } ;


 int EINVAL ;




 int * prepare_playback_urb ;
 void* retire_playback_urb ;
 int stop_endpoints (struct snd_usb_substream*,int) ;

__attribute__((used)) static int snd_usb_substream_playback_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 struct snd_usb_substream *subs = substream->runtime->private_data;

 switch (cmd) {
 case 129:
  subs->trigger_tstamp_pending_update = 1;

 case 130:
  subs->data_endpoint->prepare_data_urb = prepare_playback_urb;
  subs->data_endpoint->retire_data_urb = retire_playback_urb;
  subs->running = 1;
  return 0;
 case 128:
  stop_endpoints(subs, 0);
  subs->running = 0;
  return 0;
 case 131:
  subs->data_endpoint->prepare_data_urb = ((void*)0);

  subs->data_endpoint->retire_data_urb = retire_playback_urb;
  subs->running = 0;
  return 0;
 }

 return -EINVAL;
}
