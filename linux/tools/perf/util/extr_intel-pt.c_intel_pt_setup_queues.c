
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nr_queues; int * queue_array; } ;
struct intel_pt {TYPE_1__ queues; } ;


 int intel_pt_setup_queue (struct intel_pt*,int *,unsigned int) ;

__attribute__((used)) static int intel_pt_setup_queues(struct intel_pt *pt)
{
 unsigned int i;
 int ret;

 for (i = 0; i < pt->queues.nr_queues; i++) {
  ret = intel_pt_setup_queue(pt, &pt->queues.queue_array[i], i);
  if (ret)
   return ret;
 }
 return 0;
}
