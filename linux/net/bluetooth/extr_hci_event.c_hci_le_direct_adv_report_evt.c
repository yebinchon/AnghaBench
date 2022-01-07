
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int * data; } ;
struct hci_ev_le_direct_adv_info {int rssi; int direct_addr_type; int direct_addr; int bdaddr_type; int bdaddr; int evt_type; } ;
struct hci_dev {int dummy; } ;


 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int process_adv_report (struct hci_dev*,int ,int *,int ,int *,int ,int ,int *,int ) ;

__attribute__((used)) static void hci_le_direct_adv_report_evt(struct hci_dev *hdev,
      struct sk_buff *skb)
{
 u8 num_reports = skb->data[0];
 void *ptr = &skb->data[1];

 hci_dev_lock(hdev);

 while (num_reports--) {
  struct hci_ev_le_direct_adv_info *ev = ptr;

  process_adv_report(hdev, ev->evt_type, &ev->bdaddr,
       ev->bdaddr_type, &ev->direct_addr,
       ev->direct_addr_type, ev->rssi, ((void*)0), 0);

  ptr += sizeof(*ev);
 }

 hci_dev_unlock(hdev);
}
