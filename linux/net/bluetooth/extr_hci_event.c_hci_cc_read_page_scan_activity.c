
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_page_scan_activity {int window; int interval; scalar_t__ status; } ;
struct hci_dev {void* page_scan_window; void* page_scan_interval; int flags; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_INIT ;
 void* __le16_to_cpu (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void hci_cc_read_page_scan_activity(struct hci_dev *hdev,
        struct sk_buff *skb)
{
 struct hci_rp_read_page_scan_activity *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 if (test_bit(HCI_INIT, &hdev->flags)) {
  hdev->page_scan_interval = __le16_to_cpu(rp->interval);
  hdev->page_scan_window = __le16_to_cpu(rp->window);
 }
}
