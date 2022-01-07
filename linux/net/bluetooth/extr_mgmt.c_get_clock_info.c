
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_rp_get_clock_info {int which; int handle; TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int user_data; int cmd_complete; } ;
struct TYPE_4__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_cp_get_clock_info {TYPE_2__ addr; } ;
struct hci_request {int dummy; } ;
struct hci_dev {int id; int name; } ;
struct hci_cp_read_clock {int which; int handle; TYPE_1__ addr; } ;
struct hci_conn {scalar_t__ state; int handle; } ;
typedef int rp ;
typedef int hci_cp ;


 int ACL_LINK ;
 int BDADDR_ANY ;
 scalar_t__ BDADDR_BREDR ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_OP_READ_CLOCK ;
 int MGMT_OP_GET_CLOCK_INFO ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_CONNECTED ;
 int MGMT_STATUS_NOT_POWERED ;
 scalar_t__ bacmp (int *,int ) ;
 int bacpy (int *,int *) ;
 int clock_info_cmd_complete ;
 int cpu_to_le16 (int ) ;
 int get_clock_info_complete ;
 int hci_conn_get (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_add (struct hci_request*,int ,int,struct mgmt_rp_get_clock_info*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int memset (struct mgmt_rp_get_clock_info*,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_get_clock_info*,int) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;

__attribute__((used)) static int get_clock_info(struct sock *sk, struct hci_dev *hdev, void *data,
    u16 len)
{
 struct mgmt_cp_get_clock_info *cp = data;
 struct mgmt_rp_get_clock_info rp;
 struct hci_cp_read_clock hci_cp;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;
 struct hci_conn *conn;
 int err;

 BT_DBG("%s", hdev->name);

 memset(&rp, 0, sizeof(rp));
 bacpy(&rp.addr.bdaddr, &cp->addr.bdaddr);
 rp.addr.type = cp->addr.type;

 if (cp->addr.type != BDADDR_BREDR)
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_GET_CLOCK_INFO,
      MGMT_STATUS_INVALID_PARAMS,
      &rp, sizeof(rp));

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_GET_CLOCK_INFO,
     MGMT_STATUS_NOT_POWERED, &rp,
     sizeof(rp));
  goto unlock;
 }

 if (bacmp(&cp->addr.bdaddr, BDADDR_ANY)) {
  conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK,
            &cp->addr.bdaddr);
  if (!conn || conn->state != BT_CONNECTED) {
   err = mgmt_cmd_complete(sk, hdev->id,
      MGMT_OP_GET_CLOCK_INFO,
      MGMT_STATUS_NOT_CONNECTED,
      &rp, sizeof(rp));
   goto unlock;
  }
 } else {
  conn = ((void*)0);
 }

 cmd = mgmt_pending_add(sk, MGMT_OP_GET_CLOCK_INFO, hdev, data, len);
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }

 cmd->cmd_complete = clock_info_cmd_complete;

 hci_req_init(&req, hdev);

 memset(&hci_cp, 0, sizeof(hci_cp));
 hci_req_add(&req, HCI_OP_READ_CLOCK, sizeof(hci_cp), &hci_cp);

 if (conn) {
  hci_conn_hold(conn);
  cmd->user_data = hci_conn_get(conn);

  hci_cp.handle = cpu_to_le16(conn->handle);
  hci_cp.which = 0x01;
  hci_req_add(&req, HCI_OP_READ_CLOCK, sizeof(hci_cp), &hci_cp);
 }

 err = hci_req_run(&req, get_clock_info_complete);
 if (err < 0)
  mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);
 return err;
}
