
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hci_dev {int flags; } ;


 int ENETDOWN ;
 int HCI_UP ;
 int __hci_req_sync (struct hci_dev*,int (*) (struct hci_request*,unsigned long),unsigned long,int ,int *) ;
 int hci_req_sync_lock (struct hci_dev*) ;
 int hci_req_sync_unlock (struct hci_dev*) ;
 int test_bit (int ,int *) ;

int hci_req_sync(struct hci_dev *hdev, int (*req)(struct hci_request *req,
        unsigned long opt),
   unsigned long opt, u32 timeout, u8 *hci_status)
{
 int ret;

 if (!test_bit(HCI_UP, &hdev->flags))
  return -ENETDOWN;


 hci_req_sync_lock(hdev);
 ret = __hci_req_sync(hdev, req, opt, timeout, hci_status);
 hci_req_sync_unlock(hdev);

 return ret;
}
