
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct l2cap_conn {int dummy; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {int dst_type; int dst; scalar_t__ l2cap_data; } ;
struct TYPE_5__ {int * b; } ;
typedef TYPE_1__ bdaddr_t ;


 int BDADDR_ANY ;
 int BDADDR_LE_PUBLIC ;
 int BT_DBG (char*,struct l2cap_conn*,int *,int ) ;
 int EINVAL ;
 int ENOENT ;
 struct hci_conn* hci_conn_hash_lookup_le (struct hci_dev*,TYPE_1__*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct hci_dev* hci_get_route (TYPE_1__*,int ,int ) ;
 int sscanf (char*,char*,int *,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int get_l2cap_conn(char *buf, bdaddr_t *addr, u8 *addr_type,
     struct l2cap_conn **conn)
{
 struct hci_conn *hcon;
 struct hci_dev *hdev;
 int n;

 n = sscanf(buf, "%hhx:%hhx:%hhx:%hhx:%hhx:%hhx %hhu",
     &addr->b[5], &addr->b[4], &addr->b[3],
     &addr->b[2], &addr->b[1], &addr->b[0],
     addr_type);

 if (n < 7)
  return -EINVAL;


 hdev = hci_get_route(addr, BDADDR_ANY, BDADDR_LE_PUBLIC);
 if (!hdev)
  return -ENOENT;

 hci_dev_lock(hdev);
 hcon = hci_conn_hash_lookup_le(hdev, addr, *addr_type);
 hci_dev_unlock(hdev);

 if (!hcon)
  return -ENOENT;

 *conn = (struct l2cap_conn *)hcon->l2cap_data;

 BT_DBG("conn %p dst %pMR type %d", *conn, &hcon->dst, hcon->dst_type);

 return 0;
}
