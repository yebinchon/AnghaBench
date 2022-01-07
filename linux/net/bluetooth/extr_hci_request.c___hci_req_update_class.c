
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_request {struct hci_dev* hdev; } ;
struct hci_dev {int minor_class; int major_class; int dev_class; int name; } ;
typedef int cod ;


 int BT_DBG (char*,int ) ;
 int HCI_BREDR_ENABLED ;
 int HCI_LIMITED_DISCOVERABLE ;
 int HCI_OP_WRITE_CLASS_OF_DEV ;
 int HCI_SERVICE_CACHE ;
 int get_service_classes (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_req_add (struct hci_request*,int ,int,int*) ;
 int hdev_is_powered (struct hci_dev*) ;
 scalar_t__ memcmp (int*,int ,int) ;

void __hci_req_update_class(struct hci_request *req)
{
 struct hci_dev *hdev = req->hdev;
 u8 cod[3];

 BT_DBG("%s", hdev->name);

 if (!hdev_is_powered(hdev))
  return;

 if (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED))
  return;

 if (hci_dev_test_flag(hdev, HCI_SERVICE_CACHE))
  return;

 cod[0] = hdev->minor_class;
 cod[1] = hdev->major_class;
 cod[2] = get_service_classes(hdev);

 if (hci_dev_test_flag(hdev, HCI_LIMITED_DISCOVERABLE))
  cod[1] |= 0x20;

 if (memcmp(cod, hdev->dev_class, 3) == 0)
  return;

 hci_req_add(req, HCI_OP_WRITE_CLASS_OF_DEV, sizeof(cod), cod);
}
