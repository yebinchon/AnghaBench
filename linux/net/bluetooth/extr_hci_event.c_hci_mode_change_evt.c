
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_mode_change {scalar_t__ mode; int status; int handle; } ;
struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ mode; int flags; } ;


 int BT_DBG (char*,int ,int ) ;
 scalar_t__ HCI_CM_ACTIVE ;
 int HCI_CONN_MODE_CHANGE_PEND ;
 int HCI_CONN_POWER_SAVE ;
 int HCI_CONN_SCO_SETUP_PEND ;
 int __le16_to_cpu (int ) ;
 int clear_bit (int ,int *) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_sco_setup (struct hci_conn*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void hci_mode_change_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_mode_change *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status 0x%2.2x", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  conn->mode = ev->mode;

  if (!test_and_clear_bit(HCI_CONN_MODE_CHANGE_PEND,
     &conn->flags)) {
   if (conn->mode == HCI_CM_ACTIVE)
    set_bit(HCI_CONN_POWER_SAVE, &conn->flags);
   else
    clear_bit(HCI_CONN_POWER_SAVE, &conn->flags);
  }

  if (test_and_clear_bit(HCI_CONN_SCO_SETUP_PEND, &conn->flags))
   hci_sco_setup(conn, ev->status);
 }

 hci_dev_unlock(hdev);
}
