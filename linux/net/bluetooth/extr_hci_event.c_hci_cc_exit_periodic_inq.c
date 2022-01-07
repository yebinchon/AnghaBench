
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int name; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_PERIODIC_INQ ;
 int hci_conn_check_pending (struct hci_dev*) ;
 int hci_dev_clear_flag (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_exit_periodic_inq(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 hci_dev_clear_flag(hdev, HCI_PERIODIC_INQ);

 hci_conn_check_pending(hdev);
}
