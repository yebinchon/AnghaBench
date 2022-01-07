
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_conn {int dummy; } ;


 int ACL_LINK ;
 int BT_CONNECT2 ;
 int BT_DBG (char*,int ) ;
 int hci_acl_create_connection (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_state (struct hci_dev*,int ,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

void hci_conn_check_pending(struct hci_dev *hdev)
{
 struct hci_conn *conn;

 BT_DBG("hdev %s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_state(hdev, ACL_LINK, BT_CONNECT2);
 if (conn)
  hci_acl_create_connection(conn);

 hci_dev_unlock(hdev);
}
