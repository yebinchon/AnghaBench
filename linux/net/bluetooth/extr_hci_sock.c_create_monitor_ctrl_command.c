
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct TYPE_2__ {int cookie; } ;


 int GFP_ATOMIC ;
 scalar_t__ HCI_MON_CTRL_COMMAND ;
 scalar_t__ HCI_MON_HDR_SIZE ;
 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int ,int ) ;
 void* cpu_to_le16 (scalar_t__) ;
 TYPE_1__* hci_pi (struct sock*) ;
 int put_unaligned_le16 (scalar_t__,int ) ;
 int put_unaligned_le32 (int ,int ) ;
 struct hci_mon_hdr* skb_push (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_put_data (struct sk_buff*,void const*,scalar_t__) ;

__attribute__((used)) static struct sk_buff *create_monitor_ctrl_command(struct sock *sk, u16 index,
         u16 opcode, u16 len,
         const void *buf)
{
 struct hci_mon_hdr *hdr;
 struct sk_buff *skb;

 skb = bt_skb_alloc(6 + len, GFP_ATOMIC);
 if (!skb)
  return ((void*)0);

 put_unaligned_le32(hci_pi(sk)->cookie, skb_put(skb, 4));
 put_unaligned_le16(opcode, skb_put(skb, 2));

 if (buf)
  skb_put_data(skb, buf, len);

 __net_timestamp(skb);

 hdr = skb_push(skb, HCI_MON_HDR_SIZE);
 hdr->opcode = cpu_to_le16(HCI_MON_CTRL_COMMAND);
 hdr->index = cpu_to_le16(index);
 hdr->len = cpu_to_le16(skb->len - HCI_MON_HDR_SIZE);

 return skb;
}
