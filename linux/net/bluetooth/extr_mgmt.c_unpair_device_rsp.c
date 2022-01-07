
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mgmt_pending_cmd {int (* cmd_complete ) (struct mgmt_pending_cmd*,int ) ;int sk; struct mgmt_cp_unpair_device* param; } ;
struct TYPE_2__ {int type; int bdaddr; } ;
struct mgmt_cp_unpair_device {TYPE_1__ addr; } ;
struct hci_dev {int dummy; } ;


 int device_unpaired (struct hci_dev*,int *,int ,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 int stub1 (struct mgmt_pending_cmd*,int ) ;

__attribute__((used)) static void unpair_device_rsp(struct mgmt_pending_cmd *cmd, void *data)
{
 struct hci_dev *hdev = data;
 struct mgmt_cp_unpair_device *cp = cmd->param;

 device_unpaired(hdev, &cp->addr.bdaddr, cp->addr.type, cmd->sk);

 cmd->cmd_complete(cmd, 0);
 mgmt_pending_remove(cmd);
}
