
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ req_status; } ;


 scalar_t__ HCI_REQ_PEND ;

bool hci_req_status_pend(struct hci_dev *hdev)
{
 return hdev->req_status == HCI_REQ_PEND;
}
