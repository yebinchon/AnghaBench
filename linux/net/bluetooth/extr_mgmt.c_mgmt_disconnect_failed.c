
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;struct mgmt_cp_disconnect* param; } ;
struct TYPE_2__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_cp_disconnect {TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;
typedef int bdaddr_t ;


 int MGMT_OP_DISCONNECT ;
 int MGMT_OP_UNPAIR_DEVICE ;
 scalar_t__ bacmp (int *,int *) ;
 scalar_t__ link_to_bdaddr (scalar_t__,scalar_t__) ;
 int mgmt_pending_foreach (int ,struct hci_dev*,int ,struct hci_dev*) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (scalar_t__) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;
 int unpair_device_rsp ;

void mgmt_disconnect_failed(struct hci_dev *hdev, bdaddr_t *bdaddr,
       u8 link_type, u8 addr_type, u8 status)
{
 u8 bdaddr_type = link_to_bdaddr(link_type, addr_type);
 struct mgmt_cp_disconnect *cp;
 struct mgmt_pending_cmd *cmd;

 mgmt_pending_foreach(MGMT_OP_UNPAIR_DEVICE, hdev, unpair_device_rsp,
        hdev);

 cmd = pending_find(MGMT_OP_DISCONNECT, hdev);
 if (!cmd)
  return;

 cp = cmd->param;

 if (bacmp(bdaddr, &cp->addr.bdaddr))
  return;

 if (cp->addr.type != bdaddr_type)
  return;

 cmd->cmd_complete(cmd, mgmt_status(status));
 mgmt_pending_remove(cmd);
}
