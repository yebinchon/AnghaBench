
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ dev_type; } ;


 int HCI_CONFIG ;
 int HCI_INIT_TIMEOUT ;
 scalar_t__ HCI_PRIMARY ;
 int HCI_SETUP ;
 int __hci_req_sync (struct hci_dev*,int ,int ,int ,int *) ;
 int hci_debugfs_create_basic (struct hci_dev*) ;
 int hci_debugfs_create_bredr (struct hci_dev*) ;
 int hci_debugfs_create_common (struct hci_dev*) ;
 int hci_debugfs_create_le (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_init1_req ;
 int hci_init2_req ;
 int hci_init3_req ;
 int hci_init4_req ;
 scalar_t__ lmp_bredr_capable (struct hci_dev*) ;
 scalar_t__ lmp_le_capable (struct hci_dev*) ;

__attribute__((used)) static int __hci_init(struct hci_dev *hdev)
{
 int err;

 err = __hci_req_sync(hdev, hci_init1_req, 0, HCI_INIT_TIMEOUT, ((void*)0));
 if (err < 0)
  return err;

 if (hci_dev_test_flag(hdev, HCI_SETUP))
  hci_debugfs_create_basic(hdev);

 err = __hci_req_sync(hdev, hci_init2_req, 0, HCI_INIT_TIMEOUT, ((void*)0));
 if (err < 0)
  return err;





 if (hdev->dev_type != HCI_PRIMARY)
  return 0;

 err = __hci_req_sync(hdev, hci_init3_req, 0, HCI_INIT_TIMEOUT, ((void*)0));
 if (err < 0)
  return err;

 err = __hci_req_sync(hdev, hci_init4_req, 0, HCI_INIT_TIMEOUT, ((void*)0));
 if (err < 0)
  return err;
 if (!hci_dev_test_flag(hdev, HCI_SETUP) &&
     !hci_dev_test_flag(hdev, HCI_CONFIG))
  return 0;

 hci_debugfs_create_common(hdev);

 if (lmp_bredr_capable(hdev))
  hci_debugfs_create_bredr(hdev);

 if (lmp_le_capable(hdev))
  hci_debugfs_create_le(hdev);

 return 0;
}
