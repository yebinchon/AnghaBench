
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_iso_packet_descriptor {int offset; int length; scalar_t__ status; scalar_t__ actual_length; } ;
struct pcm_runtime {scalar_t__ stream_state; int stream_wait_cond; int in_packet_size; int stream_wait_queue; TYPE_1__* in_urbs; } ;
struct TYPE_2__ {int instance; struct usb_iso_packet_descriptor* packets; } ;


 int EIO ;
 int GFP_ATOMIC ;
 int HZ ;
 int PCM_N_PACKETS_PER_URB ;
 int PCM_N_URBS ;
 scalar_t__ STREAM_DISABLED ;
 scalar_t__ STREAM_RUNNING ;
 scalar_t__ STREAM_STARTING ;
 int usb6fire_pcm_stream_stop (struct pcm_runtime*) ;
 int usb_submit_urb (int *,int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int usb6fire_pcm_stream_start(struct pcm_runtime *rt)
{
 int ret;
 int i;
 int k;
 struct usb_iso_packet_descriptor *packet;

 if (rt->stream_state == STREAM_DISABLED) {

  rt->stream_wait_cond = 0;
  rt->stream_state = STREAM_STARTING;
  for (i = 0; i < PCM_N_URBS; i++) {
   for (k = 0; k < PCM_N_PACKETS_PER_URB; k++) {
    packet = &rt->in_urbs[i].packets[k];
    packet->offset = k * rt->in_packet_size;
    packet->length = rt->in_packet_size;
    packet->actual_length = 0;
    packet->status = 0;
   }
   ret = usb_submit_urb(&rt->in_urbs[i].instance,
     GFP_ATOMIC);
   if (ret) {
    usb6fire_pcm_stream_stop(rt);
    return ret;
   }
  }


  wait_event_timeout(rt->stream_wait_queue, rt->stream_wait_cond,
    HZ);
  if (rt->stream_wait_cond)
   rt->stream_state = STREAM_RUNNING;
  else {
   usb6fire_pcm_stream_stop(rt);
   return -EIO;
  }
 }
 return 0;
}
