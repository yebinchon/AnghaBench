
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_mode {int val; } ;
struct TYPE_3__ {int work; } ;
struct hci_dev {TYPE_1__ power_off; int req_workqueue; int power_on; int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int ENODATA ;
 int ENOMEM ;
 int HCI_POWER_OFF_TIMEOUT ;
 int MGMT_OP_SET_POWERED ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int cancel_delayed_work (TYPE_1__*) ;
 int clean_up_hci_state (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int queue_delayed_work (int ,TYPE_1__*,int ) ;
 int queue_work (int ,int *) ;
 int send_settings_rsp (struct sock*,int ,struct hci_dev*) ;

__attribute__((used)) static int set_powered(struct sock *sk, struct hci_dev *hdev, void *data,
         u16 len)
{
 struct mgmt_mode *cp = data;
 struct mgmt_pending_cmd *cmd;
 int err;

 BT_DBG("request for %s", hdev->name);

 if (cp->val != 0x00 && cp->val != 0x01)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_POWERED,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (pending_find(MGMT_OP_SET_POWERED, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_SET_POWERED,
          MGMT_STATUS_BUSY);
  goto failed;
 }

 if (!!cp->val == hdev_is_powered(hdev)) {
  err = send_settings_rsp(sk, MGMT_OP_SET_POWERED, hdev);
  goto failed;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_SET_POWERED, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto failed;
 }

 if (cp->val) {
  queue_work(hdev->req_workqueue, &hdev->power_on);
  err = 0;
 } else {

  err = clean_up_hci_state(hdev);
  if (!err)
   queue_delayed_work(hdev->req_workqueue, &hdev->power_off,
        HCI_POWER_OFF_TIMEOUT);


  if (err == -ENODATA) {
   cancel_delayed_work(&hdev->power_off);
   queue_work(hdev->req_workqueue, &hdev->power_off.work);
   err = 0;
  }
 }

failed:
 hci_dev_unlock(hdev);
 return err;
}
