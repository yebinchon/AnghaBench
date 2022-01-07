
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int nr_queues; int * queue_array; } ;
struct cs_etm_auxtrace {TYPE_1__ queues; int machine; scalar_t__ kernel_start; } ;


 int cs_etm__setup_queue (struct cs_etm_auxtrace*,int *,unsigned int) ;
 scalar_t__ machine__kernel_start (int ) ;

__attribute__((used)) static int cs_etm__setup_queues(struct cs_etm_auxtrace *etm)
{
 unsigned int i;
 int ret;

 if (!etm->kernel_start)
  etm->kernel_start = machine__kernel_start(etm->machine);

 for (i = 0; i < etm->queues.nr_queues; i++) {
  ret = cs_etm__setup_queue(etm, &etm->queues.queue_array[i], i);
  if (ret)
   return ret;
 }

 return 0;
}
