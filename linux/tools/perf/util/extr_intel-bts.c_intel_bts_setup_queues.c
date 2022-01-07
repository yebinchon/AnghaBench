
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nr_queues; int * queue_array; } ;
struct intel_bts {TYPE_1__ queues; } ;


 int intel_bts_setup_queue (struct intel_bts*,int *,unsigned int) ;

__attribute__((used)) static int intel_bts_setup_queues(struct intel_bts *bts)
{
 unsigned int i;
 int ret;

 for (i = 0; i < bts->queues.nr_queues; i++) {
  ret = intel_bts_setup_queue(bts, &bts->queues.queue_array[i],
         i);
  if (ret)
   return ret;
 }
 return 0;
}
