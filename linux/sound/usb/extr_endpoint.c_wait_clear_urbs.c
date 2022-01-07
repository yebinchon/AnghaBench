
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_endpoint {int * prepare_data_urb; int * retire_data_urb; int * sync_slave; int * data_subs; int flags; int ep_num; int chip; int nurbs; int active_mask; } ;


 int EP_FLAG_STOPPING ;
 int bitmap_weight (int *,int ) ;
 int clear_bit (int ,int *) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usb_audio_err (int ,char*,int,int ) ;

__attribute__((used)) static int wait_clear_urbs(struct snd_usb_endpoint *ep)
{
 unsigned long end_time = jiffies + msecs_to_jiffies(1000);
 int alive;

 do {
  alive = bitmap_weight(&ep->active_mask, ep->nurbs);
  if (!alive)
   break;

  schedule_timeout_uninterruptible(1);
 } while (time_before(jiffies, end_time));

 if (alive)
  usb_audio_err(ep->chip,
   "timeout: still %d active urbs on EP #%x\n",
   alive, ep->ep_num);
 clear_bit(EP_FLAG_STOPPING, &ep->flags);

 ep->data_subs = ((void*)0);
 ep->sync_slave = ((void*)0);
 ep->retire_data_urb = ((void*)0);
 ep->prepare_data_urb = ((void*)0);

 return 0;
}
