
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;int * sk; } ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_ev_auth_failed {int status; TYPE_1__ addr; } ;
struct hci_conn {int hdev; int dst_type; int type; int dst; } ;
typedef int ev ;


 int MGMT_EV_AUTH_FAILED ;
 int bacpy (int *,int *) ;
 struct mgmt_pending_cmd* find_pairing (struct hci_conn*) ;
 int link_to_bdaddr (int ,int ) ;
 int mgmt_event (int ,int ,struct mgmt_ev_auth_failed*,int,int *) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

void mgmt_auth_failed(struct hci_conn *conn, u8 hci_status)
{
 struct mgmt_ev_auth_failed ev;
 struct mgmt_pending_cmd *cmd;
 u8 status = mgmt_status(hci_status);

 bacpy(&ev.addr.bdaddr, &conn->dst);
 ev.addr.type = link_to_bdaddr(conn->type, conn->dst_type);
 ev.status = status;

 cmd = find_pairing(conn);

 mgmt_event(MGMT_EV_AUTH_FAILED, conn->hdev, &ev, sizeof(ev),
      cmd ? cmd->sk : ((void*)0));

 if (cmd) {
  cmd->cmd_complete(cmd, status);
  mgmt_pending_remove(cmd);
 }
}
