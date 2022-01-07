
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__* data; } ;
struct hci_ev_le_ext_adv_report {scalar_t__ length; int data; int rssi; int bdaddr_type; int bdaddr; int evt_type; } ;
struct hci_dev {int dummy; } ;


 scalar_t__ LE_ADV_INVALID ;
 int __le16_to_cpu (int ) ;
 scalar_t__ ext_evt_type_to_legacy (int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int process_adv_report (struct hci_dev*,scalar_t__,int *,int ,int *,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void hci_le_ext_adv_report_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 u8 num_reports = skb->data[0];
 void *ptr = &skb->data[1];

 hci_dev_lock(hdev);

 while (num_reports--) {
  struct hci_ev_le_ext_adv_report *ev = ptr;
  u8 legacy_evt_type;
  u16 evt_type;

  evt_type = __le16_to_cpu(ev->evt_type);
  legacy_evt_type = ext_evt_type_to_legacy(evt_type);
  if (legacy_evt_type != LE_ADV_INVALID) {
   process_adv_report(hdev, legacy_evt_type, &ev->bdaddr,
        ev->bdaddr_type, ((void*)0), 0, ev->rssi,
        ev->data, ev->length);
  }

  ptr += sizeof(*ev) + ev->length;
 }

 hci_dev_unlock(hdev);
}
