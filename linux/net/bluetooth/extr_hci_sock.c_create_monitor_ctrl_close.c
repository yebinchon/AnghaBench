
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct TYPE_4__ {int channel; TYPE_1__* hdev; int cookie; } ;
struct TYPE_3__ {scalar_t__ id; } ;


 int GFP_ATOMIC ;



 scalar_t__ HCI_DEV_NONE ;
 scalar_t__ HCI_MON_CTRL_CLOSE ;
 scalar_t__ HCI_MON_HDR_SIZE ;
 int __net_timestamp (struct sk_buff*) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 void* cpu_to_le16 (scalar_t__) ;
 TYPE_2__* hci_pi (struct sock*) ;
 int put_unaligned_le32 (int ,int ) ;
 struct hci_mon_hdr* skb_push (struct sk_buff*,scalar_t__) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *create_monitor_ctrl_close(struct sock *sk)
{
 struct hci_mon_hdr *hdr;
 struct sk_buff *skb;


 if (!hci_pi(sk)->cookie)
  return ((void*)0);

 switch (hci_pi(sk)->channel) {
 case 129:
 case 128:
 case 130:
  break;
 default:

  return ((void*)0);
 }

 skb = bt_skb_alloc(4, GFP_ATOMIC);
 if (!skb)
  return ((void*)0);

 put_unaligned_le32(hci_pi(sk)->cookie, skb_put(skb, 4));

 __net_timestamp(skb);

 hdr = skb_push(skb, HCI_MON_HDR_SIZE);
 hdr->opcode = cpu_to_le16(HCI_MON_CTRL_CLOSE);
 if (hci_pi(sk)->hdev)
  hdr->index = cpu_to_le16(hci_pi(sk)->hdev->id);
 else
  hdr->index = cpu_to_le16(HCI_DEV_NONE);
 hdr->len = cpu_to_le16(skb->len - HCI_MON_HDR_SIZE);

 return skb;
}
