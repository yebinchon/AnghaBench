
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;


 int HCI_PRIVACY ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;

__attribute__((used)) static bool scan_use_rpa(struct hci_dev *hdev)
{
 return hci_dev_test_flag(hdev, HCI_PRIVACY);
}
