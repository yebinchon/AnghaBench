
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ dev_type; int flow_ctl_mode; int name; } ;


 int ACL_LINK ;
 int AMP_LINK ;
 int BT_DBG (char*,int ) ;
 scalar_t__ HCI_AMP ;


 scalar_t__ HCI_PRIMARY ;
 int hci_conn_num (struct hci_dev*,int ) ;
 int hci_sched_acl_blk (struct hci_dev*) ;
 int hci_sched_acl_pkt (struct hci_dev*) ;

__attribute__((used)) static void hci_sched_acl(struct hci_dev *hdev)
{
 BT_DBG("%s", hdev->name);


 if (!hci_conn_num(hdev, ACL_LINK) && hdev->dev_type == HCI_PRIMARY)
  return;


 if (!hci_conn_num(hdev, AMP_LINK) && hdev->dev_type == HCI_AMP)
  return;

 switch (hdev->flow_ctl_mode) {
 case 128:
  hci_sched_acl_pkt(hdev);
  break;

 case 129:
  hci_sched_acl_blk(hdev);
  break;
 }
}
