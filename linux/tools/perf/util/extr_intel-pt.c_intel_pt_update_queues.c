
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int new_data; } ;
struct intel_pt {TYPE_1__ queues; } ;


 int intel_pt_setup_queues (struct intel_pt*) ;

__attribute__((used)) static inline int intel_pt_update_queues(struct intel_pt *pt)
{
 if (pt->queues.new_data) {
  pt->queues.new_data = 0;
  return intel_pt_setup_queues(pt);
 }
 return 0;
}
