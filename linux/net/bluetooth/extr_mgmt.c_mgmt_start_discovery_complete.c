
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;} ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*,int ) ;
 int MGMT_OP_START_DISCOVERY ;
 int MGMT_OP_START_LIMITED_DISCOVERY ;
 int MGMT_OP_START_SERVICE_DISCOVERY ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int mgmt_status (int ) ;
 struct mgmt_pending_cmd* pending_find (int ,struct hci_dev*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

void mgmt_start_discovery_complete(struct hci_dev *hdev, u8 status)
{
 struct mgmt_pending_cmd *cmd;

 BT_DBG("status %d", status);

 hci_dev_lock(hdev);

 cmd = pending_find(MGMT_OP_START_DISCOVERY, hdev);
 if (!cmd)
  cmd = pending_find(MGMT_OP_START_SERVICE_DISCOVERY, hdev);

 if (!cmd)
  cmd = pending_find(MGMT_OP_START_LIMITED_DISCOVERY, hdev);

 if (cmd) {
  cmd->cmd_complete(cmd, mgmt_status(status));
  mgmt_pending_remove(cmd);
 }

 hci_dev_unlock(hdev);
}
