
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int id; int name; } ;


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_OP_READ_LOCAL_OOB_DATA ;
 int HCI_OP_READ_LOCAL_OOB_EXT_DATA ;
 int MGMT_OP_READ_LOCAL_OOB_DATA ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_NOT_POWERED ;
 int MGMT_STATUS_NOT_SUPPORTED ;
 scalar_t__ bredr_sc_enabled (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_add (struct hci_request*,int ,int ,int *) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run_skb (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int lmp_ssp_capable (struct hci_dev*) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,int *,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int read_local_oob_data_complete ;

__attribute__((used)) static int read_local_oob_data(struct sock *sk, struct hci_dev *hdev,
          void *data, u16 data_len)
{
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 int err;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_READ_LOCAL_OOB_DATA,
          MGMT_STATUS_NOT_POWERED);
  goto unlock;
 }

 if (!lmp_ssp_capable(hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_READ_LOCAL_OOB_DATA,
          MGMT_STATUS_NOT_SUPPORTED);
  goto unlock;
 }

 if (pending_find(MGMT_OP_READ_LOCAL_OOB_DATA, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_READ_LOCAL_OOB_DATA,
          MGMT_STATUS_BUSY);
  goto unlock;
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_READ_LOCAL_OOB_DATA, hdev, ((void*)0), 0);
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }

 hci_req_init(&req, hdev);

 if (bredr_sc_enabled(hdev))
  hci_req_add(&req, HCI_OP_READ_LOCAL_OOB_EXT_DATA, 0, ((void*)0));
 else
  hci_req_add(&req, HCI_OP_READ_LOCAL_OOB_DATA, 0, ((void*)0));

 err = hci_req_run_skb(&req, read_local_oob_data_complete);
 if (err < 0)
  mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
 return err;
}
