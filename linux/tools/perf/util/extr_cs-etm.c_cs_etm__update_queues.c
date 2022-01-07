
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int new_data; } ;
struct cs_etm_auxtrace {TYPE_1__ queues; } ;


 int cs_etm__setup_queues (struct cs_etm_auxtrace*) ;

__attribute__((used)) static int cs_etm__update_queues(struct cs_etm_auxtrace *etm)
{
 if (etm->queues.new_data) {
  etm->queues.new_data = 0;
  return cs_etm__setup_queues(etm);
 }

 return 0;
}
