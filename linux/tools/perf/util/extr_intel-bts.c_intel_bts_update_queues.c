
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int new_data; } ;
struct intel_bts {TYPE_1__ queues; } ;


 int intel_bts_setup_queues (struct intel_bts*) ;

__attribute__((used)) static inline int intel_bts_update_queues(struct intel_bts *bts)
{
 if (bts->queues.new_data) {
  bts->queues.new_data = 0;
  return intel_bts_setup_queues(bts);
 }
 return 0;
}
