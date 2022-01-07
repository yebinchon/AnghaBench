
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct hci_event_hdr {scalar_t__ evt; } ;
struct hci_ev_cmd_complete {int opcode; } ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*,scalar_t__,scalar_t__) ;
 int HCI_EVENT_HDR_SIZE ;
 scalar_t__ HCI_EV_CMD_COMPLETE ;
 scalar_t__ HCI_EV_CMD_STATUS ;
 scalar_t__ __le16_to_cpu (int ) ;
 int bt_dev_err (struct hci_dev*,char*,...) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static bool hci_get_cmd_complete(struct hci_dev *hdev, u16 opcode,
     u8 event, struct sk_buff *skb)
{
 struct hci_ev_cmd_complete *ev;
 struct hci_event_hdr *hdr;

 if (!skb)
  return 0;

 if (skb->len < sizeof(*hdr)) {
  bt_dev_err(hdev, "too short HCI event");
  return 0;
 }

 hdr = (void *) skb->data;
 skb_pull(skb, HCI_EVENT_HDR_SIZE);

 if (event) {
  if (hdr->evt != event)
   return 0;
  return 1;
 }




 if (hdr->evt == HCI_EV_CMD_STATUS)
  return 0;

 if (hdr->evt != HCI_EV_CMD_COMPLETE) {
  bt_dev_err(hdev, "last event is not cmd complete (0x%2.2x)",
      hdr->evt);
  return 0;
 }

 if (skb->len < sizeof(*ev)) {
  bt_dev_err(hdev, "too short cmd_complete event");
  return 0;
 }

 ev = (void *) skb->data;
 skb_pull(skb, sizeof(*ev));

 if (opcode != __le16_to_cpu(ev->opcode)) {
  BT_DBG("opcode doesn't match (0x%2.2x != 0x%2.2x)", opcode,
         __le16_to_cpu(ev->opcode));
  return 0;
 }

 return 1;
}
