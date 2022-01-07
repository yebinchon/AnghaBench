
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_qos_flags_request {int node; scalar_t__ flags; } ;
struct pm_qos_flags {scalar_t__ effective_flags; int list; } ;
typedef scalar_t__ s32 ;
typedef enum pm_qos_req_action { ____Placeholder_pm_qos_req_action } pm_qos_req_action ;


 int INIT_LIST_HEAD (int *) ;



 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int pm_qos_flags_remove_req (struct pm_qos_flags*,struct pm_qos_flags_request*) ;
 int pm_qos_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_pm_qos_update_flags (int,scalar_t__,scalar_t__) ;

bool pm_qos_update_flags(struct pm_qos_flags *pqf,
    struct pm_qos_flags_request *req,
    enum pm_qos_req_action action, s32 val)
{
 unsigned long irqflags;
 s32 prev_value, curr_value;

 spin_lock_irqsave(&pm_qos_lock, irqflags);

 prev_value = list_empty(&pqf->list) ? 0 : pqf->effective_flags;

 switch (action) {
 case 129:
  pm_qos_flags_remove_req(pqf, req);
  break;
 case 128:
  pm_qos_flags_remove_req(pqf, req);

 case 130:
  req->flags = val;
  INIT_LIST_HEAD(&req->node);
  list_add_tail(&req->node, &pqf->list);
  pqf->effective_flags |= val;
  break;
 default:

  ;
 }

 curr_value = list_empty(&pqf->list) ? 0 : pqf->effective_flags;

 spin_unlock_irqrestore(&pm_qos_lock, irqflags);

 trace_pm_qos_update_flags(action, prev_value, curr_value);
 return prev_value != curr_value;
}
