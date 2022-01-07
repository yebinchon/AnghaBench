
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prio; } ;
struct pm_qos_request {size_t pm_qos_class; TYPE_1__ node; } ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {int constraints; } ;


 int PM_QOS_UPDATE_REQ ;
 TYPE_2__** pm_qos_array ;
 int pm_qos_update_target (int ,TYPE_1__*,int ,scalar_t__) ;
 int trace_pm_qos_update_request (size_t,scalar_t__) ;

__attribute__((used)) static void __pm_qos_update_request(struct pm_qos_request *req,
      s32 new_value)
{
 trace_pm_qos_update_request(req->pm_qos_class, new_value);

 if (new_value != req->node.prio)
  pm_qos_update_target(
   pm_qos_array[req->pm_qos_class]->constraints,
   &req->node, PM_QOS_UPDATE_REQ, new_value);
}
