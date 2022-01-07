
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct llc_sap_state_ev {scalar_t__ type; scalar_t__ prim_type; } ;
struct llc_sap {int dummy; } ;


 scalar_t__ LLC_SAP_EV_ACTIVATION_REQ ;
 scalar_t__ LLC_SAP_EV_TYPE_SIMPLE ;
 struct llc_sap_state_ev* llc_sap_ev (struct sk_buff*) ;

int llc_sap_ev_activation_req(struct llc_sap *sap, struct sk_buff *skb)
{
 struct llc_sap_state_ev *ev = llc_sap_ev(skb);

 return ev->type == LLC_SAP_EV_TYPE_SIMPLE &&
        ev->prim_type == LLC_SAP_EV_ACTIVATION_REQ ? 0 : 1;
}
