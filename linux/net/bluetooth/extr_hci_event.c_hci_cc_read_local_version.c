
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_read_local_version {int lmp_subver; int manufacturer; int lmp_ver; int hci_rev; int hci_ver; scalar_t__ status; } ;
struct hci_dev {void* lmp_subver; void* manufacturer; int lmp_ver; void* hci_rev; int hci_ver; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_CONFIG ;
 int HCI_SETUP ;
 void* __le16_to_cpu (int ) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_read_local_version(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_rp_read_local_version *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 if (hci_dev_test_flag(hdev, HCI_SETUP) ||
     hci_dev_test_flag(hdev, HCI_CONFIG)) {
  hdev->hci_ver = rp->hci_ver;
  hdev->hci_rev = __le16_to_cpu(rp->hci_rev);
  hdev->lmp_ver = rp->lmp_ver;
  hdev->manufacturer = __le16_to_cpu(rp->manufacturer);
  hdev->lmp_subver = __le16_to_cpu(rp->lmp_subver);
 }
}
