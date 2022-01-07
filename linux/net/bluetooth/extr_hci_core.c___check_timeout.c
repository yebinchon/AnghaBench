
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ acl_last_tx; } ;


 int ACL_LINK ;
 scalar_t__ HCI_ACL_TX_TIMEOUT ;
 int HCI_UNCONFIGURED ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_link_tx_to (struct hci_dev*,int ) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static void __check_timeout(struct hci_dev *hdev, unsigned int cnt)
{
 if (!hci_dev_test_flag(hdev, HCI_UNCONFIGURED)) {


  if (!cnt && time_after(jiffies, hdev->acl_last_tx +
           HCI_ACL_TX_TIMEOUT))
   hci_link_tx_to(hdev, ACL_LINK);
 }
}
