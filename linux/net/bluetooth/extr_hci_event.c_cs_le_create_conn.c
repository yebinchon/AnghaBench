
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hci_dev {int bdaddr; int random_addr; } ;
struct hci_conn {int conn_timeout; int le_conn_timeout; TYPE_1__* hdev; int resp_addr; scalar_t__ resp_addr_type; int init_addr; scalar_t__ init_addr_type; } ;
typedef int bdaddr_t ;
struct TYPE_2__ {int workqueue; } ;


 scalar_t__ ADDR_LE_DEV_RANDOM ;
 scalar_t__ HCI_LE_USE_PEER_ADDR ;
 int bacpy (int *,int *) ;
 struct hci_conn* hci_conn_hash_lookup_le (struct hci_dev*,int *,scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void cs_le_create_conn(struct hci_dev *hdev, bdaddr_t *peer_addr,
         u8 peer_addr_type, u8 own_address_type,
         u8 filter_policy)
{
 struct hci_conn *conn;

 conn = hci_conn_hash_lookup_le(hdev, peer_addr,
           peer_addr_type);
 if (!conn)
  return;





 conn->init_addr_type = own_address_type;
 if (own_address_type == ADDR_LE_DEV_RANDOM)
  bacpy(&conn->init_addr, &hdev->random_addr);
 else
  bacpy(&conn->init_addr, &hdev->bdaddr);

 conn->resp_addr_type = peer_addr_type;
 bacpy(&conn->resp_addr, peer_addr);






 if (filter_policy == HCI_LE_USE_PEER_ADDR)
  queue_delayed_work(conn->hdev->workqueue,
       &conn->le_conn_timeout,
       conn->conn_timeout);
}
