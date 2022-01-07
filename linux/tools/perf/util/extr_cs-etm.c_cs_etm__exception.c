
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_etm_traceid_queue {TYPE_1__* prev_packet; } ;
struct TYPE_2__ {scalar_t__ sample_type; int last_instr_taken_branch; } ;


 scalar_t__ CS_ETM_RANGE ;

__attribute__((used)) static int cs_etm__exception(struct cs_etm_traceid_queue *tidq)
{
 if (tidq->prev_packet->sample_type == CS_ETM_RANGE)
  tidq->prev_packet->last_instr_taken_branch = 1;

 return 0;
}
