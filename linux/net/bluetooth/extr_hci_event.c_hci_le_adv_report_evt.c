
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int * data; } ;
struct hci_ev_le_advertising_info {size_t length; int * data; int bdaddr_type; int bdaddr; int evt_type; } ;
struct hci_dev {int dummy; } ;
typedef int s8 ;


 size_t HCI_MAX_AD_LENGTH ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int process_adv_report (struct hci_dev*,int ,int *,int ,int *,int ,int ,int *,size_t) ;

__attribute__((used)) static void hci_le_adv_report_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 u8 num_reports = skb->data[0];
 void *ptr = &skb->data[1];

 hci_dev_lock(hdev);

 while (num_reports--) {
  struct hci_ev_le_advertising_info *ev = ptr;
  s8 rssi;

  if (ev->length <= HCI_MAX_AD_LENGTH) {
   rssi = ev->data[ev->length];
   process_adv_report(hdev, ev->evt_type, &ev->bdaddr,
        ev->bdaddr_type, ((void*)0), 0, rssi,
        ev->data, ev->length);
  } else {
   bt_dev_err(hdev, "Dropping invalid advertising data");
  }

  ptr += sizeof(*ev) + ev->length + 1;
 }

 hci_dev_unlock(hdev);
}
