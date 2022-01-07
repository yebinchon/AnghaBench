
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcm_runtime {TYPE_2__* in_urbs; TYPE_1__* out_urbs; } ;
struct TYPE_4__ {int buffer; } ;
struct TYPE_3__ {int buffer; } ;


 int PCM_N_URBS ;
 int kfree (int ) ;

__attribute__((used)) static void usb6fire_pcm_buffers_destroy(struct pcm_runtime *rt)
{
 int i;

 for (i = 0; i < PCM_N_URBS; i++) {
  kfree(rt->out_urbs[i].buffer);
  kfree(rt->in_urbs[i].buffer);
 }
}
