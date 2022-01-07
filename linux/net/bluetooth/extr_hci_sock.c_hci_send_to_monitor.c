
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct hci_dev {int id; } ;
typedef void* __le16 ;
struct TYPE_2__ {int incoming; } ;


 int BT_DBG (char*,struct hci_dev*,int ) ;
 int GFP_ATOMIC ;

 int HCI_CHANNEL_MONITOR ;



 int HCI_MON_ACL_RX_PKT ;
 int HCI_MON_ACL_TX_PKT ;
 int HCI_MON_COMMAND_PKT ;
 int HCI_MON_EVENT_PKT ;
 int HCI_MON_HDR_SIZE ;
 int HCI_MON_SCO_RX_PKT ;
 int HCI_MON_SCO_TX_PKT ;
 int HCI_MON_VENDOR_DIAG ;

 int HCI_SOCK_TRUSTED ;
 struct sk_buff* __pskb_copy_fclone (struct sk_buff*,int ,int ,int) ;
 int atomic_read (int *) ;
 TYPE_1__* bt_cb (struct sk_buff*) ;
 void* cpu_to_le16 (int ) ;
 int hci_send_to_channel (int ,struct sk_buff*,int ,int *) ;
 int hci_skb_pkt_type (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int monitor_promisc ;
 struct hci_mon_hdr* skb_push (struct sk_buff*,int ) ;

void hci_send_to_monitor(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct sk_buff *skb_copy = ((void*)0);
 struct hci_mon_hdr *hdr;
 __le16 opcode;

 if (!atomic_read(&monitor_promisc))
  return;

 BT_DBG("hdev %p len %d", hdev, skb->len);

 switch (hci_skb_pkt_type(skb)) {
 case 131:
  opcode = cpu_to_le16(HCI_MON_COMMAND_PKT);
  break;
 case 129:
  opcode = cpu_to_le16(HCI_MON_EVENT_PKT);
  break;
 case 132:
  if (bt_cb(skb)->incoming)
   opcode = cpu_to_le16(HCI_MON_ACL_RX_PKT);
  else
   opcode = cpu_to_le16(HCI_MON_ACL_TX_PKT);
  break;
 case 128:
  if (bt_cb(skb)->incoming)
   opcode = cpu_to_le16(HCI_MON_SCO_RX_PKT);
  else
   opcode = cpu_to_le16(HCI_MON_SCO_TX_PKT);
  break;
 case 130:
  opcode = cpu_to_le16(HCI_MON_VENDOR_DIAG);
  break;
 default:
  return;
 }


 skb_copy = __pskb_copy_fclone(skb, HCI_MON_HDR_SIZE, GFP_ATOMIC, 1);
 if (!skb_copy)
  return;


 hdr = skb_push(skb_copy, HCI_MON_HDR_SIZE);
 hdr->opcode = opcode;
 hdr->index = cpu_to_le16(hdev->id);
 hdr->len = cpu_to_le16(skb->len);

 hci_send_to_channel(HCI_CHANNEL_MONITOR, skb_copy,
       HCI_SOCK_TRUSTED, ((void*)0));
 kfree_skb(skb_copy);
}
