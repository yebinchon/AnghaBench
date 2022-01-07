
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ len; } ;
struct hci_mon_hdr {void* len; int index; void* opcode; } ;
typedef int __le16 ;


 int GFP_ATOMIC ;
 scalar_t__ HCI_MON_CTRL_EVENT ;
 scalar_t__ HCI_MON_HDR_SIZE ;
 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int ,int ) ;
 void* cpu_to_le16 (scalar_t__) ;
 int put_unaligned_le16 (int ,int ) ;
 int put_unaligned_le32 (int ,int ) ;
 struct hci_mon_hdr* skb_push (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,void*,int ) ;

__attribute__((used)) static struct sk_buff *create_monitor_ctrl_event(__le16 index, u32 cookie,
       u16 opcode, u16 len, void *buf)
{
 struct hci_mon_hdr *hdr;
 struct sk_buff *skb;

 skb = bt_skb_alloc(6 + len, GFP_ATOMIC);
 if (!skb)
  return ((void*)0);

 put_unaligned_le32(cookie, skb_put(skb, 4));
 put_unaligned_le16(opcode, skb_put(skb, 2));

 if (buf)
  skb_put_data(skb, buf, len);

 __net_timestamp(skb);

 hdr = skb_push(skb, HCI_MON_HDR_SIZE);
 hdr->opcode = cpu_to_le16(HCI_MON_CTRL_EVENT);
 hdr->index = index;
 hdr->len = cpu_to_le16(skb->len - HCI_MON_HDR_SIZE);

 return skb;
}
