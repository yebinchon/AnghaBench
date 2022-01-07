
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_evt_le_ext_adv_set_term {int conn_handle; scalar_t__ status; } ;
struct hci_dev {scalar_t__ adv_addr_type; int cur_adv_instance; int random_addr; int name; } ;
struct hci_conn {int resp_addr; } ;
struct adv_info {int random_addr; } ;


 scalar_t__ ADDR_LE_DEV_RANDOM ;
 int BT_DBG (char*,int ,scalar_t__) ;
 int __le16_to_cpu (int ) ;
 int bacpy (int *,int *) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 struct adv_info* hci_find_adv_instance (struct hci_dev*,int ) ;

__attribute__((used)) static void hci_le_ext_adv_term_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_evt_le_ext_adv_set_term *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 if (ev->status)
  return;

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->conn_handle));
 if (conn) {
  struct adv_info *adv_instance;

  if (hdev->adv_addr_type != ADDR_LE_DEV_RANDOM)
   return;

  if (!hdev->cur_adv_instance) {
   bacpy(&conn->resp_addr, &hdev->random_addr);
   return;
  }

  adv_instance = hci_find_adv_instance(hdev, hdev->cur_adv_instance);
  if (adv_instance)
   bacpy(&conn->resp_addr, &adv_instance->random_addr);
 }
}
