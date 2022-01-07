
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hci_mon_new_index {int name; int bdaddr; int bus; int type; } ;
struct hci_mon_index_info {void* manufacturer; int bdaddr; } ;
struct hci_mon_hdr {void* len; void* index; void* opcode; } ;
struct hci_dev {int manufacturer; int id; int bdaddr; int name; int bus; int dev_type; } ;
typedef void* __le16 ;


 int GFP_ATOMIC ;






 int HCI_MON_CLOSE_INDEX ;
 int HCI_MON_DEL_INDEX ;
 int HCI_MON_HDR_SIZE ;
 int HCI_MON_INDEX_INFO ;
 int HCI_MON_INDEX_INFO_SIZE ;
 int HCI_MON_NEW_INDEX ;
 int HCI_MON_NEW_INDEX_SIZE ;
 int HCI_MON_OPEN_INDEX ;
 int __net_timestamp (struct sk_buff*) ;
 int bacpy (int *,int *) ;
 struct sk_buff* bt_skb_alloc (int ,int ) ;
 void* cpu_to_le16 (int) ;
 int memcpy (int ,int ,int) ;
 struct hci_mon_hdr* skb_push (struct sk_buff*,int) ;
 void* skb_put (struct sk_buff*,int ) ;

__attribute__((used)) static struct sk_buff *create_monitor_event(struct hci_dev *hdev, int event)
{
 struct hci_mon_hdr *hdr;
 struct hci_mon_new_index *ni;
 struct hci_mon_index_info *ii;
 struct sk_buff *skb;
 __le16 opcode;

 switch (event) {
 case 131:
  skb = bt_skb_alloc(HCI_MON_NEW_INDEX_SIZE, GFP_ATOMIC);
  if (!skb)
   return ((void*)0);

  ni = skb_put(skb, HCI_MON_NEW_INDEX_SIZE);
  ni->type = hdev->dev_type;
  ni->bus = hdev->bus;
  bacpy(&ni->bdaddr, &hdev->bdaddr);
  memcpy(ni->name, hdev->name, 8);

  opcode = cpu_to_le16(HCI_MON_NEW_INDEX);
  break;

 case 129:
  skb = bt_skb_alloc(0, GFP_ATOMIC);
  if (!skb)
   return ((void*)0);

  opcode = cpu_to_le16(HCI_MON_DEL_INDEX);
  break;

 case 130:
  if (hdev->manufacturer == 0xffff)
   return ((void*)0);



 case 128:
  skb = bt_skb_alloc(HCI_MON_INDEX_INFO_SIZE, GFP_ATOMIC);
  if (!skb)
   return ((void*)0);

  ii = skb_put(skb, HCI_MON_INDEX_INFO_SIZE);
  bacpy(&ii->bdaddr, &hdev->bdaddr);
  ii->manufacturer = cpu_to_le16(hdev->manufacturer);

  opcode = cpu_to_le16(HCI_MON_INDEX_INFO);
  break;

 case 132:
  skb = bt_skb_alloc(0, GFP_ATOMIC);
  if (!skb)
   return ((void*)0);

  opcode = cpu_to_le16(HCI_MON_OPEN_INDEX);
  break;

 case 133:
  skb = bt_skb_alloc(0, GFP_ATOMIC);
  if (!skb)
   return ((void*)0);

  opcode = cpu_to_le16(HCI_MON_CLOSE_INDEX);
  break;

 default:
  return ((void*)0);
 }

 __net_timestamp(skb);

 hdr = skb_push(skb, HCI_MON_HDR_SIZE);
 hdr->opcode = opcode;
 hdr->index = cpu_to_le16(hdev->id);
 hdr->len = cpu_to_le16(skb->len - HCI_MON_HDR_SIZE);

 return skb;
}
