
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcm_runtime {TYPE_2__* in_urbs; TYPE_1__* out_urbs; } ;
struct TYPE_4__ {void* buffer; } ;
struct TYPE_3__ {void* buffer; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PCM_MAX_PACKET_SIZE ;
 int PCM_N_PACKETS_PER_URB ;
 int PCM_N_URBS ;
 void* kcalloc (int ,int ,int ) ;

__attribute__((used)) static int usb6fire_pcm_buffers_init(struct pcm_runtime *rt)
{
 int i;

 for (i = 0; i < PCM_N_URBS; i++) {
  rt->out_urbs[i].buffer = kcalloc(PCM_MAX_PACKET_SIZE,
       PCM_N_PACKETS_PER_URB,
       GFP_KERNEL);
  if (!rt->out_urbs[i].buffer)
   return -ENOMEM;
  rt->in_urbs[i].buffer = kcalloc(PCM_MAX_PACKET_SIZE,
      PCM_N_PACKETS_PER_URB,
      GFP_KERNEL);
  if (!rt->in_urbs[i].buffer)
   return -ENOMEM;
 }
 return 0;
}
