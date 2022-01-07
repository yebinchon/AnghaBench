
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_6__ {int mac; int lsap; } ;
struct TYPE_7__ {int mac; int lsap; } ;
struct llc_sap_state_ev {int prim_type; int prim; int type; TYPE_2__ daddr; TYPE_3__ saddr; } ;
struct TYPE_8__ {int lsap; } ;
struct llc_sap {TYPE_4__ laddr; } ;
struct TYPE_5__ {int * dev_addr; } ;


 int IFHWADDRLEN ;
 int LLC_PRIM_TYPE_REQ ;
 int LLC_SAP_EV_TYPE_PRIM ;
 int LLC_XID_PRIM ;
 struct llc_sap_state_ev* llc_sap_ev (struct sk_buff*) ;
 int llc_sap_state_process (struct llc_sap*,struct sk_buff*) ;
 int memcpy (int ,int *,int ) ;

void llc_build_and_send_xid_pkt(struct llc_sap *sap, struct sk_buff *skb,
    u8 *dmac, u8 dsap)
{
 struct llc_sap_state_ev *ev = llc_sap_ev(skb);

 ev->saddr.lsap = sap->laddr.lsap;
 ev->daddr.lsap = dsap;
 memcpy(ev->saddr.mac, skb->dev->dev_addr, IFHWADDRLEN);
 memcpy(ev->daddr.mac, dmac, IFHWADDRLEN);

 ev->type = LLC_SAP_EV_TYPE_PRIM;
 ev->prim = LLC_XID_PRIM;
 ev->prim_type = LLC_PRIM_TYPE_REQ;
 llc_sap_state_process(sap, skb);
}
