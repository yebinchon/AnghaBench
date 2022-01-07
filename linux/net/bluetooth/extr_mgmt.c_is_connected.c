
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ dst_type; scalar_t__ state; } ;
typedef int bdaddr_t ;


 scalar_t__ BT_CONNECTED ;
 int LE_LINK ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;

__attribute__((used)) static bool is_connected(struct hci_dev *hdev, bdaddr_t *addr, u8 type)
{
 struct hci_conn *conn;

 conn = hci_conn_hash_lookup_ba(hdev, LE_LINK, addr);
 if (!conn)
  return 0;

 if (conn->dst_type != type)
  return 0;

 if (conn->state != BT_CONNECTED)
  return 0;

 return 1;
}
