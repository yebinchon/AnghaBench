
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {int transfer_buffer_length; } ;
struct snd_usb_substream {int last_delay; int last_frame_number; int lock; TYPE_2__* dev; int running; struct snd_usb_endpoint* data_endpoint; TYPE_1__* pcm_substream; } ;
struct snd_usb_endpoint {int stride; } ;
struct snd_pcm_runtime {int rate; int delay; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct snd_pcm_runtime* runtime; } ;


 int abs (int) ;
 int dev_dbg_ratelimited (int *,char*,int,int) ;
 int snd_usb_pcm_delay (struct snd_usb_substream*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_get_current_frame_number (TYPE_2__*) ;

__attribute__((used)) static void retire_playback_urb(struct snd_usb_substream *subs,
          struct urb *urb)
{
 unsigned long flags;
 struct snd_pcm_runtime *runtime = subs->pcm_substream->runtime;
 struct snd_usb_endpoint *ep = subs->data_endpoint;
 int processed = urb->transfer_buffer_length / ep->stride;
 int est_delay;




 if (!processed)
  return;

 spin_lock_irqsave(&subs->lock, flags);
 if (!subs->last_delay)
  goto out;

 est_delay = snd_usb_pcm_delay(subs, runtime->rate);

 if (processed > subs->last_delay)
  subs->last_delay = 0;
 else
  subs->last_delay -= processed;
 runtime->delay = subs->last_delay;






 if (abs(est_delay - subs->last_delay) * 1000 > runtime->rate * 2)
  dev_dbg_ratelimited(&subs->dev->dev,
   "delay: estimated %d, actual %d\n",
   est_delay, subs->last_delay);

 if (!subs->running) {



  subs->last_frame_number =
   usb_get_current_frame_number(subs->dev) & 0xff;
 }

 out:
 spin_unlock_irqrestore(&subs->lock, flags);
}
