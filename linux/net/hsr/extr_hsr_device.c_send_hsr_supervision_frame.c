
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int len; TYPE_2__* dev; int priority; void* protocol; } ;
struct hsr_tag {void* sequence_nr; void* encap_proto; } ;
struct hsr_sup_tag {int HSR_TLV_length; scalar_t__ HSR_TLV_type; void* sequence_nr; } ;
struct hsr_sup_payload {int macaddress_A; } ;
struct hsr_port {TYPE_2__* dev; TYPE_1__* hsr; } ;
struct TYPE_5__ {int needed_tailroom; int dev_addr; } ;
struct TYPE_4__ {int seqnr_lock; int sequence_nr; int sup_sequence_nr; int sup_multicast_addr; } ;


 int ETH_P_HSR ;
 int ETH_P_PRP ;
 scalar_t__ ETH_ZLEN ;
 scalar_t__ HSR_HLEN ;
 int HSR_V1_SUP_LSDUSIZE ;
 int LL_RESERVED_SPACE (TYPE_2__*) ;
 int TC_PRIO_CONTROL ;
 int WARN_ONCE (int,char*) ;
 struct sk_buff* dev_alloc_skb (int) ;
 scalar_t__ dev_hard_header (struct sk_buff*,TYPE_2__*,int ,int ,int ,int ) ;
 int ether_addr_copy (int ,int ) ;
 int hsr_forward_skb (struct sk_buff*,struct hsr_port*) ;
 void* htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int set_hsr_stag_HSR_ver (struct hsr_sup_tag*,scalar_t__) ;
 int set_hsr_stag_path (struct hsr_sup_tag*,int) ;
 int set_hsr_tag_LSDU_size (struct hsr_tag*,int ) ;
 void* skb_put (struct sk_buff*,int) ;
 scalar_t__ skb_put_padto (struct sk_buff*,scalar_t__) ;
 int skb_reserve (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void send_hsr_supervision_frame(struct hsr_port *master,
           u8 type, u8 hsr_ver)
{
 struct sk_buff *skb;
 int hlen, tlen;
 struct hsr_tag *hsr_tag;
 struct hsr_sup_tag *hsr_stag;
 struct hsr_sup_payload *hsr_sp;
 unsigned long irqflags;

 hlen = LL_RESERVED_SPACE(master->dev);
 tlen = master->dev->needed_tailroom;
 skb = dev_alloc_skb(sizeof(struct hsr_tag) +
       sizeof(struct hsr_sup_tag) +
       sizeof(struct hsr_sup_payload) + hlen + tlen);

 if (!skb)
  return;

 skb_reserve(skb, hlen);

 skb->dev = master->dev;
 skb->protocol = htons(hsr_ver ? ETH_P_HSR : ETH_P_PRP);
 skb->priority = TC_PRIO_CONTROL;

 if (dev_hard_header(skb, skb->dev, (hsr_ver ? ETH_P_HSR : ETH_P_PRP),
       master->hsr->sup_multicast_addr,
       skb->dev->dev_addr, skb->len) <= 0)
  goto out;
 skb_reset_mac_header(skb);

 if (hsr_ver > 0) {
  hsr_tag = skb_put(skb, sizeof(struct hsr_tag));
  hsr_tag->encap_proto = htons(ETH_P_PRP);
  set_hsr_tag_LSDU_size(hsr_tag, HSR_V1_SUP_LSDUSIZE);
 }

 hsr_stag = skb_put(skb, sizeof(struct hsr_sup_tag));
 set_hsr_stag_path(hsr_stag, (hsr_ver ? 0x0 : 0xf));
 set_hsr_stag_HSR_ver(hsr_stag, hsr_ver);


 spin_lock_irqsave(&master->hsr->seqnr_lock, irqflags);
 if (hsr_ver > 0) {
  hsr_stag->sequence_nr = htons(master->hsr->sup_sequence_nr);
  hsr_tag->sequence_nr = htons(master->hsr->sequence_nr);
  master->hsr->sup_sequence_nr++;
  master->hsr->sequence_nr++;
 } else {
  hsr_stag->sequence_nr = htons(master->hsr->sequence_nr);
  master->hsr->sequence_nr++;
 }
 spin_unlock_irqrestore(&master->hsr->seqnr_lock, irqflags);

 hsr_stag->HSR_TLV_type = type;

 hsr_stag->HSR_TLV_length =
    hsr_ver ? sizeof(struct hsr_sup_payload) : 12;


 hsr_sp = skb_put(skb, sizeof(struct hsr_sup_payload));
 ether_addr_copy(hsr_sp->macaddress_A, master->dev->dev_addr);

 if (skb_put_padto(skb, ETH_ZLEN + HSR_HLEN))
  return;

 hsr_forward_skb(skb, master);
 return;

out:
 WARN_ONCE(1, "HSR: Could not send supervision frame\n");
 kfree_skb(skb);
}
