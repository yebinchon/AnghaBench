
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn_param_update_req {void* to_multiplier; void* latency; void* max; void* min; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ role; scalar_t__ le_conn_interval; scalar_t__ le_conn_min_interval; scalar_t__ le_conn_max_interval; scalar_t__ le_conn_latency; scalar_t__ le_supv_timeout; int pending_sec_level; scalar_t__ out; struct hci_dev* hdev; } ;
typedef int req ;


 int BT_DBG (char*,int ,struct l2cap_conn*) ;
 scalar_t__ HCI_ROLE_SLAVE ;
 int L2CAP_CONN_PARAM_UPDATE_REQ ;
 void* cpu_to_le16 (scalar_t__) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_conn_param_update_req*) ;
 int smp_conn_security (struct hci_conn*,int ) ;

__attribute__((used)) static void l2cap_le_conn_ready(struct l2cap_conn *conn)
{
 struct hci_conn *hcon = conn->hcon;
 struct hci_dev *hdev = hcon->hdev;

 BT_DBG("%s conn %p", hdev->name, conn);




 if (hcon->out)
  smp_conn_security(hcon, hcon->pending_sec_level);






 if (hcon->role == HCI_ROLE_SLAVE &&
     (hcon->le_conn_interval < hcon->le_conn_min_interval ||
      hcon->le_conn_interval > hcon->le_conn_max_interval)) {
  struct l2cap_conn_param_update_req req;

  req.min = cpu_to_le16(hcon->le_conn_min_interval);
  req.max = cpu_to_le16(hcon->le_conn_max_interval);
  req.latency = cpu_to_le16(hcon->le_conn_latency);
  req.to_multiplier = cpu_to_le16(hcon->le_supv_timeout);

  l2cap_send_cmd(conn, l2cap_get_ident(conn),
          L2CAP_CONN_PARAM_UPDATE_REQ, sizeof(req), &req);
 }
}
