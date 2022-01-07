
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {TYPE_1__* dev; } ;
struct llc_xid_info {int dummy; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int LLC_PDU_RSP ;
 int LLC_PDU_TYPE_U ;
 int LLC_XID_NULL_CLASS_2 ;
 int dev_queue_xmit (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* llc_alloc_frame (int *,TYPE_1__*,int ,int) ;
 int llc_mac_hdr_init (struct sk_buff*,int ,int *) ;
 int llc_pdu_decode_sa (struct sk_buff*,int *) ;
 int llc_pdu_decode_ssap (struct sk_buff*,int *) ;
 int llc_pdu_header_init (struct sk_buff*,int ,int ,int ,int ) ;
 int llc_pdu_init_as_xid_rsp (struct sk_buff*,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int llc_station_ac_send_xid_r(struct sk_buff *skb)
{
 u8 mac_da[ETH_ALEN], dsap;
 int rc = 1;
 struct sk_buff *nskb = llc_alloc_frame(((void*)0), skb->dev, LLC_PDU_TYPE_U,
            sizeof(struct llc_xid_info));

 if (!nskb)
  goto out;
 rc = 0;
 llc_pdu_decode_sa(skb, mac_da);
 llc_pdu_decode_ssap(skb, &dsap);
 llc_pdu_header_init(nskb, LLC_PDU_TYPE_U, 0, dsap, LLC_PDU_RSP);
 llc_pdu_init_as_xid_rsp(nskb, LLC_XID_NULL_CLASS_2, 127);
 rc = llc_mac_hdr_init(nskb, skb->dev->dev_addr, mac_da);
 if (unlikely(rc))
  goto free;
 dev_queue_xmit(nskb);
out:
 return rc;
free:
 kfree_skb(nskb);
 goto out;
}
