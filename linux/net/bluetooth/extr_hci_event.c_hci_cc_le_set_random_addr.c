
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int random_addr; int name; } ;
typedef int bdaddr_t ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_LE_SET_RANDOM_ADDR ;
 int bacpy (int *,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int * hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_le_set_random_addr(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 bdaddr_t *sent;

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_LE_SET_RANDOM_ADDR);
 if (!sent)
  return;

 hci_dev_lock(hdev);

 bacpy(&hdev->random_addr, sent);

 hci_dev_unlock(hdev);
}
