
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {TYPE_2__* dev; int priority; int protocol; } ;
struct net_bridge_port {TYPE_2__* dev; TYPE_1__* br; } ;
struct TYPE_5__ {int dev_addr; } ;
struct TYPE_4__ {int group_addr; } ;


 int ETH_P_802_2 ;
 int LLC_PDU_CMD ;
 int LLC_PDU_TYPE_U ;
 scalar_t__ LLC_RESERVE ;
 int LLC_SAP_BSPAN ;
 int NFPROTO_BRIDGE ;
 int NF_BR_LOCAL_OUT ;
 int NF_HOOK (int ,int ,int ,int *,struct sk_buff*,int *,TYPE_2__*,int ) ;
 int TC_PRIO_CONTROL ;
 int __skb_put_data (struct sk_buff*,unsigned char const*,int) ;
 int br_send_bpdu_finish ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int dev_net (TYPE_2__*) ;
 int htons (int ) ;
 int llc_mac_hdr_init (struct sk_buff*,int ,int ) ;
 int llc_pdu_header_init (struct sk_buff*,int ,int ,int ,int ) ;
 int llc_pdu_init_as_ui_cmd (struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void br_send_bpdu(struct net_bridge_port *p,
    const unsigned char *data, int length)
{
 struct sk_buff *skb;

 skb = dev_alloc_skb(length+LLC_RESERVE);
 if (!skb)
  return;

 skb->dev = p->dev;
 skb->protocol = htons(ETH_P_802_2);
 skb->priority = TC_PRIO_CONTROL;

 skb_reserve(skb, LLC_RESERVE);
 __skb_put_data(skb, data, length);

 llc_pdu_header_init(skb, LLC_PDU_TYPE_U, LLC_SAP_BSPAN,
       LLC_SAP_BSPAN, LLC_PDU_CMD);
 llc_pdu_init_as_ui_cmd(skb);

 llc_mac_hdr_init(skb, p->dev->dev_addr, p->br->group_addr);

 skb_reset_mac_header(skb);

 NF_HOOK(NFPROTO_BRIDGE, NF_BR_LOCAL_OUT,
  dev_net(p->dev), ((void*)0), skb, ((void*)0), skb->dev,
  br_send_bpdu_finish);
}
