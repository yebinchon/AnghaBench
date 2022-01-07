
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int cur_adv_instance; int random_addr; } ;
struct hci_cp_le_set_adv_set_rand_addr {int bdaddr; } ;
struct adv_info {int random_addr; } ;
typedef scalar_t__ __u8 ;


 int HCI_OP_LE_SET_ADV_SET_RAND_ADDR ;
 int bacpy (int *,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int ) ;
 struct hci_cp_le_set_adv_set_rand_addr* hci_sent_cmd_data (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_cc_le_set_adv_set_random_addr(struct hci_dev *hdev,
                                              struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);
 struct hci_cp_le_set_adv_set_rand_addr *cp;
 struct adv_info *adv_instance;

 if (status)
  return;

 cp = hci_sent_cmd_data(hdev, HCI_OP_LE_SET_ADV_SET_RAND_ADDR);
 if (!cp)
  return;

 hci_dev_lock(hdev);

 if (!hdev->cur_adv_instance) {

  bacpy(&hdev->random_addr, &cp->bdaddr);
 } else {
  adv_instance = hci_find_adv_instance(hdev,
           hdev->cur_adv_instance);
  if (adv_instance)
   bacpy(&adv_instance->random_addr, &cp->bdaddr);
 }

 hci_dev_unlock(hdev);
}
