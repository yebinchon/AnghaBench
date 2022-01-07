
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; } ;
struct TYPE_3__ {int lsap; } ;
struct llc_sap {TYPE_1__ laddr; } ;
struct TYPE_4__ {int dev_addr; } ;


 int LLC_PDU_CMD ;
 int LLC_PDU_TYPE_U ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 int llc_mac_hdr_init (struct sk_buff*,int ,unsigned char*) ;
 int llc_pdu_header_init (struct sk_buff*,int ,int ,unsigned char,int ) ;
 int llc_pdu_init_as_ui_cmd (struct sk_buff*) ;

int llc_build_and_send_ui_pkt(struct llc_sap *sap, struct sk_buff *skb,
         unsigned char *dmac, unsigned char dsap)
{
 int rc;
 llc_pdu_header_init(skb, LLC_PDU_TYPE_U, sap->laddr.lsap,
       dsap, LLC_PDU_CMD);
 llc_pdu_init_as_ui_cmd(skb);
 rc = llc_mac_hdr_init(skb, skb->dev->dev_addr, dmac);
 if (likely(!rc))
  rc = dev_queue_xmit(skb);
 else
  kfree_skb(skb);
 return rc;
}
