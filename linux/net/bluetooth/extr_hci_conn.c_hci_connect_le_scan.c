
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ pending_sec_level; int conn_timeout; int sec_level; scalar_t__ dst_type; int flags; int state; } ;
typedef int bdaddr_t ;


 int BT_CONNECT ;
 int BT_DBG (char*) ;
 int BT_SECURITY_LOW ;
 int EBUSY ;
 int ECONNREFUSED ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct hci_conn* ERR_PTR (int ) ;
 int HCI_CONN_SCANNING ;
 int HCI_LE_ENABLED ;
 int HCI_ROLE_MASTER ;
 int LE_LINK ;
 struct hci_conn* hci_conn_add (struct hci_dev*,int ,int *,int ) ;
 struct hci_conn* hci_conn_hash_lookup_le (struct hci_dev*,int *,scalar_t__) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ hci_explicit_conn_params_set (struct hci_dev*,int *,scalar_t__) ;
 int hci_update_background_scan (struct hci_dev*) ;
 scalar_t__ lmp_le_capable (struct hci_dev*) ;
 int set_bit (int ,int *) ;

struct hci_conn *hci_connect_le_scan(struct hci_dev *hdev, bdaddr_t *dst,
         u8 dst_type, u8 sec_level,
         u16 conn_timeout)
{
 struct hci_conn *conn;


 if (!hci_dev_test_flag(hdev, HCI_LE_ENABLED)) {
  if (lmp_le_capable(hdev))
   return ERR_PTR(-ECONNREFUSED);

  return ERR_PTR(-EOPNOTSUPP);
 }
 conn = hci_conn_hash_lookup_le(hdev, dst, dst_type);
 if (conn) {
  if (conn->pending_sec_level < sec_level)
   conn->pending_sec_level = sec_level;
  goto done;
 }

 BT_DBG("requesting refresh of dst_addr");

 conn = hci_conn_add(hdev, LE_LINK, dst, HCI_ROLE_MASTER);
 if (!conn)
  return ERR_PTR(-ENOMEM);

 if (hci_explicit_conn_params_set(hdev, dst, dst_type) < 0)
  return ERR_PTR(-EBUSY);

 conn->state = BT_CONNECT;
 set_bit(HCI_CONN_SCANNING, &conn->flags);
 conn->dst_type = dst_type;
 conn->sec_level = BT_SECURITY_LOW;
 conn->pending_sec_level = sec_level;
 conn->conn_timeout = conn_timeout;

 hci_update_background_scan(hdev);

done:
 hci_conn_hold(conn);
 return conn;
}
