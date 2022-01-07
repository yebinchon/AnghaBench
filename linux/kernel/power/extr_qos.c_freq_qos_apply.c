
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct freq_qos_request {int type; int pnode; TYPE_1__* qos; } ;
typedef int s32 ;
typedef enum pm_qos_req_action { ____Placeholder_pm_qos_req_action } pm_qos_req_action ;
struct TYPE_2__ {int max_freq; int min_freq; } ;


 int EINVAL ;


 int pm_qos_update_target (int *,int *,int,int ) ;

__attribute__((used)) static int freq_qos_apply(struct freq_qos_request *req,
     enum pm_qos_req_action action, s32 value)
{
 int ret;

 switch(req->type) {
 case 128:
  ret = pm_qos_update_target(&req->qos->min_freq, &req->pnode,
        action, value);
  break;
 case 129:
  ret = pm_qos_update_target(&req->qos->max_freq, &req->pnode,
        action, value);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
