
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct hci_request {TYPE_1__* hdev; } ;
struct hci_cp_reject_sync_conn_req {void* reason; int bdaddr; int handle; int phy_handle; } ;
struct hci_cp_reject_conn_req {void* reason; int bdaddr; int handle; int phy_handle; } ;
struct hci_cp_disconnect {void* reason; int bdaddr; int handle; int phy_handle; } ;
struct hci_cp_disconn_phy_link {void* reason; int bdaddr; int handle; int phy_handle; } ;
struct hci_conn {int state; struct hci_cp_reject_sync_conn_req dst; int type; int flags; int handle; } ;
typedef int rej ;
typedef int dc ;
typedef int cp ;
struct TYPE_2__ {int hci_ver; } ;


 int ACL_LINK ;
 int AMP_LINK ;
 int BLUETOOTH_VER_1_2 ;
 int BT_CLOSED ;




 int BT_DISCONN ;
 int ESCO_LINK ;
 int HCI_CONN_SCANNING ;
 void* HCI_ERROR_REJ_LIMITED_RESOURCES ;
 int HCI_OP_CREATE_CONN_CANCEL ;
 int HCI_OP_DISCONNECT ;
 int HCI_OP_DISCONN_PHY_LINK ;
 int HCI_OP_LE_CREATE_CONN_CANCEL ;
 int HCI_OP_REJECT_CONN_REQ ;
 int HCI_OP_REJECT_SYNC_CONN_REQ ;
 int HCI_PHY_HANDLE (int ) ;
 int LE_LINK ;
 int SCO_LINK ;
 int bacpy (int *,struct hci_cp_reject_sync_conn_req*) ;
 int cpu_to_le16 (int ) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_reject_sync_conn_req*) ;
 int test_bit (int ,int *) ;

void __hci_abort_conn(struct hci_request *req, struct hci_conn *conn,
        u8 reason)
{
 switch (conn->state) {
 case 128:
 case 131:
  if (conn->type == AMP_LINK) {
   struct hci_cp_disconn_phy_link cp;

   cp.phy_handle = HCI_PHY_HANDLE(conn->handle);
   cp.reason = reason;
   hci_req_add(req, HCI_OP_DISCONN_PHY_LINK, sizeof(cp),
        &cp);
  } else {
   struct hci_cp_disconnect dc;

   dc.handle = cpu_to_le16(conn->handle);
   dc.reason = reason;
   hci_req_add(req, HCI_OP_DISCONNECT, sizeof(dc), &dc);
  }

  conn->state = BT_DISCONN;

  break;
 case 130:
  if (conn->type == LE_LINK) {
   if (test_bit(HCI_CONN_SCANNING, &conn->flags))
    break;
   hci_req_add(req, HCI_OP_LE_CREATE_CONN_CANCEL,
        0, ((void*)0));
  } else if (conn->type == ACL_LINK) {
   if (req->hdev->hci_ver < BLUETOOTH_VER_1_2)
    break;
   hci_req_add(req, HCI_OP_CREATE_CONN_CANCEL,
        6, &conn->dst);
  }
  break;
 case 129:
  if (conn->type == ACL_LINK) {
   struct hci_cp_reject_conn_req rej;

   bacpy(&rej.bdaddr, &conn->dst);
   rej.reason = reason;

   hci_req_add(req, HCI_OP_REJECT_CONN_REQ,
        sizeof(rej), &rej);
  } else if (conn->type == SCO_LINK || conn->type == ESCO_LINK) {
   struct hci_cp_reject_sync_conn_req rej;

   bacpy(&rej.bdaddr, &conn->dst);







   rej.reason = HCI_ERROR_REJ_LIMITED_RESOURCES;

   hci_req_add(req, HCI_OP_REJECT_SYNC_CONN_REQ,
        sizeof(rej), &rej);
  }
  break;
 default:
  conn->state = BT_CLOSED;
  break;
 }
}
