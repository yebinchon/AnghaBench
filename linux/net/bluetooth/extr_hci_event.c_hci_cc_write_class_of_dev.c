
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int dev_class; int name; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_MGMT ;
 int HCI_OP_WRITE_CLASS_OF_DEV ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 void* hci_sent_cmd_data (struct hci_dev*,int ) ;
 int memcpy (int ,void*,int) ;
 int mgmt_set_class_of_dev_complete (struct hci_dev*,void*,scalar_t__) ;

__attribute__((used)) static void hci_cc_write_class_of_dev(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 void *sent;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 sent = hci_sent_cmd_data(hdev, HCI_OP_WRITE_CLASS_OF_DEV);
 if (!sent)
  return;

 hci_dev_lock(hdev);

 if (status == 0)
  memcpy(hdev->dev_class, sent, 3);

 if (hci_dev_test_flag(hdev, HCI_MGMT))
  mgmt_set_class_of_dev_complete(hdev, sent, status);

 hci_dev_unlock(hdev);
}
