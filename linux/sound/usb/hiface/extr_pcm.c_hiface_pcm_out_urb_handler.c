
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int status; struct pcm_urb* context; } ;
struct pcm_urb {int instance; int buffer; TYPE_1__* chip; } ;
struct pcm_substream {int instance; int lock; scalar_t__ active; } ;
struct pcm_runtime {int panic; scalar_t__ stream_state; int stream_wait_cond; struct pcm_substream playback; int stream_wait_queue; } ;
struct TYPE_2__ {struct pcm_runtime* pcm; } ;


 int ECONNRESET ;
 int ENODEV ;
 int ENOENT ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int PCM_PACKET_SIZE ;
 scalar_t__ STREAM_STARTING ;
 scalar_t__ STREAM_STOPPING ;
 int hiface_pcm_playback (struct pcm_substream*,struct pcm_urb*) ;
 int memset (int ,int ,int ) ;
 int snd_pcm_period_elapsed (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int usb_submit_urb (int *,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static void hiface_pcm_out_urb_handler(struct urb *usb_urb)
{
 struct pcm_urb *out_urb = usb_urb->context;
 struct pcm_runtime *rt = out_urb->chip->pcm;
 struct pcm_substream *sub;
 bool do_period_elapsed = 0;
 unsigned long flags;
 int ret;

 if (rt->panic || rt->stream_state == STREAM_STOPPING)
  return;

 if (unlikely(usb_urb->status == -ENOENT ||
       usb_urb->status == -ENODEV ||
       usb_urb->status == -ECONNRESET ||
       usb_urb->status == -ESHUTDOWN)) {
  goto out_fail;
 }

 if (rt->stream_state == STREAM_STARTING) {
  rt->stream_wait_cond = 1;
  wake_up(&rt->stream_wait_queue);
 }


 sub = &rt->playback;
 spin_lock_irqsave(&sub->lock, flags);
 if (sub->active)
  do_period_elapsed = hiface_pcm_playback(sub, out_urb);
 else
  memset(out_urb->buffer, 0, PCM_PACKET_SIZE);

 spin_unlock_irqrestore(&sub->lock, flags);

 if (do_period_elapsed)
  snd_pcm_period_elapsed(sub->instance);

 ret = usb_submit_urb(&out_urb->instance, GFP_ATOMIC);
 if (ret < 0)
  goto out_fail;

 return;

out_fail:
 rt->panic = 1;
}
