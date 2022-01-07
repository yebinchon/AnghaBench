
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrp_attr {size_t state; } ;
struct mrp_applicant {int dummy; } ;
typedef enum mrp_event { ____Placeholder_mrp_event } mrp_event ;
typedef enum mrp_applicant_state { ____Placeholder_mrp_applicant_state } mrp_applicant_state ;


 int MRP_APPLICANT_INVALID ;
 int MRP_EVENT_TX ;






 int MRP_VECATTR_EVENT_JOIN_IN ;
 int MRP_VECATTR_EVENT_LV ;
 int MRP_VECATTR_EVENT_NEW ;
 int WARN_ON (int) ;
 int** mrp_applicant_state_table ;
 int mrp_attr_destroy (struct mrp_applicant*,struct mrp_attr*) ;
 int mrp_pdu_append_vecattr_event (struct mrp_applicant*,struct mrp_attr*,int ) ;
 int* mrp_tx_action_table ;

__attribute__((used)) static void mrp_attr_event(struct mrp_applicant *app,
      struct mrp_attr *attr, enum mrp_event event)
{
 enum mrp_applicant_state state;

 state = mrp_applicant_state_table[attr->state][event];
 if (state == MRP_APPLICANT_INVALID) {
  WARN_ON(1);
  return;
 }

 if (event == MRP_EVENT_TX) {




  switch (mrp_tx_action_table[attr->state]) {
  case 133:
  case 130:
  case 132:
   break;
  case 128:
   if (mrp_pdu_append_vecattr_event(
        app, attr, MRP_VECATTR_EVENT_NEW) < 0)
    return;
   break;
  case 131:
   if (mrp_pdu_append_vecattr_event(
        app, attr, MRP_VECATTR_EVENT_JOIN_IN) < 0)
    return;
   break;
  case 129:
   if (mrp_pdu_append_vecattr_event(
        app, attr, MRP_VECATTR_EVENT_LV) < 0)
    return;




   mrp_attr_destroy(app, attr);
   return;
  default:
   WARN_ON(1);
  }
 }

 attr->state = state;
}
