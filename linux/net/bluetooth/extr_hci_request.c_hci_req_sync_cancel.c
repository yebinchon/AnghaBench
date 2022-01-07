
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ req_status; int req_result; int req_wait_q; int name; } ;


 int BT_DBG (char*,int ,int) ;
 scalar_t__ HCI_REQ_CANCELED ;
 scalar_t__ HCI_REQ_PEND ;
 int wake_up_interruptible (int *) ;

void hci_req_sync_cancel(struct hci_dev *hdev, int err)
{
 BT_DBG("%s err 0x%2.2x", hdev->name, err);

 if (hdev->req_status == HCI_REQ_PEND) {
  hdev->req_result = err;
  hdev->req_status = HCI_REQ_CANCELED;
  wake_up_interruptible(&hdev->req_wait_q);
 }
}
