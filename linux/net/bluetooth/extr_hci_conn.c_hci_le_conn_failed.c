
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hci_dev {int pend_le_conns; } ;
struct hci_conn_params {scalar_t__ explicit_connect; int * conn; } ;
struct hci_conn {int dst_type; int type; int dst; int state; struct hci_dev* hdev; } ;


 int BT_CLOSED ;
 int HCI_ERROR_UNKNOWN_CONN_ID ;
 int hci_conn_del (struct hci_conn*) ;
 int hci_conn_drop (int *) ;
 int hci_conn_put (int *) ;
 int hci_connect_cfm (struct hci_conn*,int ) ;
 struct hci_conn_params* hci_pend_le_action_lookup (int *,int *,int ) ;
 int hci_req_reenable_advertising (struct hci_dev*) ;
 int hci_update_background_scan (struct hci_dev*) ;
 int mgmt_connect_failed (struct hci_dev*,int *,int ,int ,int ) ;

void hci_le_conn_failed(struct hci_conn *conn, u8 status)
{
 struct hci_dev *hdev = conn->hdev;
 struct hci_conn_params *params;

 params = hci_pend_le_action_lookup(&hdev->pend_le_conns, &conn->dst,
        conn->dst_type);
 if (params && params->conn) {
  hci_conn_drop(params->conn);
  hci_conn_put(params->conn);
  params->conn = ((void*)0);
 }

 conn->state = BT_CLOSED;







 if (status != HCI_ERROR_UNKNOWN_CONN_ID ||
     (params && params->explicit_connect))
  mgmt_connect_failed(hdev, &conn->dst, conn->type,
        conn->dst_type, status);

 hci_connect_cfm(conn, status);

 hci_conn_del(conn);




 hci_update_background_scan(hdev);




 hci_req_reenable_advertising(hdev);
}
