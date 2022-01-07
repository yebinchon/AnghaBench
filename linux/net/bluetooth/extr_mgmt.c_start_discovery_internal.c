
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int cmd_complete; } ;
struct mgmt_cp_start_discovery {int type; } ;
struct TYPE_2__ {scalar_t__ state; int report_invalid_rssi; int limited; int type; } ;
struct hci_dev {int discov_update; int req_workqueue; TYPE_1__ discovery; int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int DISCOVERY_STARTING ;
 scalar_t__ DISCOVERY_STOPPED ;
 int ENOMEM ;
 int HCI_PERIODIC_INQ ;
 int MGMT_OP_START_LIMITED_DISCOVERY ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_NOT_POWERED ;
 int discovery_type_is_valid (struct hci_dev*,int ,int *) ;
 int generic_cmd_complete ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_discovery_filter_clear (struct hci_dev*) ;
 int hci_discovery_set_state (struct hci_dev*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,int *,int) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int start_discovery_internal(struct sock *sk, struct hci_dev *hdev,
        u16 op, void *data, u16 len)
{
 struct mgmt_cp_start_discovery *cp = data;
 struct mgmt_pending_cmd *cmd;
 u8 status;
 int err;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_complete(sk, hdev->id, op,
     MGMT_STATUS_NOT_POWERED,
     &cp->type, sizeof(cp->type));
  goto failed;
 }

 if (hdev->discovery.state != DISCOVERY_STOPPED ||
     hci_dev_test_flag(hdev, HCI_PERIODIC_INQ)) {
  err = mgmt_cmd_complete(sk, hdev->id, op, MGMT_STATUS_BUSY,
     &cp->type, sizeof(cp->type));
  goto failed;
 }

 if (!discovery_type_is_valid(hdev, cp->type, &status)) {
  err = mgmt_cmd_complete(sk, hdev->id, op, status,
     &cp->type, sizeof(cp->type));
  goto failed;
 }




 hci_discovery_filter_clear(hdev);

 hdev->discovery.type = cp->type;
 hdev->discovery.report_invalid_rssi = 0;
 if (op == MGMT_OP_START_LIMITED_DISCOVERY)
  hdev->discovery.limited = 1;
 else
  hdev->discovery.limited = 0;

 cmd = mgmt_pending_add(sk, op, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto failed;
 }

 cmd->cmd_complete = generic_cmd_complete;

 hci_discovery_set_state(hdev, DISCOVERY_STARTING);
 queue_work(hdev->req_workqueue, &hdev->discov_update);
 err = 0;

failed:
 hci_dev_unlock(hdev);
 return err;
}
