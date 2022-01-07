
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_rp_get_conn_info {scalar_t__ tx_power; scalar_t__ max_tx_power; int rssi; TYPE_1__ addr; } ;
struct mgmt_pending_cmd {int cmd_complete; int user_data; } ;
struct TYPE_4__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_cp_get_conn_info {TYPE_2__ addr; } ;
struct hci_request {int dummy; } ;
struct hci_dev {unsigned long conn_info_min_age; int id; scalar_t__ conn_info_max_age; int name; } ;
struct hci_cp_read_tx_power {int type; void* handle; } ;
struct hci_cp_read_rssi {int type; void* handle; } ;
struct hci_conn {scalar_t__ state; scalar_t__ tx_power; scalar_t__ max_tx_power; int rssi; scalar_t__ conn_info_timestamp; int handle; } ;
typedef int rp ;
typedef int req_txp_cp ;
typedef int req_rssi_cp ;


 int ACL_LINK ;
 scalar_t__ BDADDR_BREDR ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_OP_READ_RSSI ;
 int HCI_OP_READ_TX_POWER ;
 scalar_t__ HCI_TX_POWER_INVALID ;
 int LE_LINK ;
 int MGMT_OP_GET_CONN_INFO ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_NOT_CONNECTED ;
 int MGMT_STATUS_NOT_POWERED ;
 int MGMT_STATUS_SUCCESS ;
 int bacpy (int *,int *) ;
 int bdaddr_type_is_le (scalar_t__) ;
 int bdaddr_type_is_valid (scalar_t__) ;
 int conn_info_cmd_complete ;
 int conn_info_refresh_complete ;
 void* cpu_to_le16 (int ) ;
 int hci_conn_get (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_req_add (struct hci_request*,int ,int,struct hci_cp_read_tx_power*) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 scalar_t__ jiffies ;
 int memset (struct mgmt_rp_get_conn_info*,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_get_conn_info*,int) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,int ) ;
 scalar_t__ msecs_to_jiffies (unsigned long) ;
 scalar_t__ pending_find_data (int ,struct hci_dev*,struct hci_conn*) ;
 unsigned long prandom_u32_max (scalar_t__) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static int get_conn_info(struct sock *sk, struct hci_dev *hdev, void *data,
    u16 len)
{
 struct mgmt_cp_get_conn_info *cp = data;
 struct mgmt_rp_get_conn_info rp;
 struct hci_conn *conn;
 unsigned long conn_info_age;
 int err = 0;

 BT_DBG("%s", hdev->name);

 memset(&rp, 0, sizeof(rp));
 bacpy(&rp.addr.bdaddr, &cp->addr.bdaddr);
 rp.addr.type = cp->addr.type;

 if (!bdaddr_type_is_valid(cp->addr.type))
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
      MGMT_STATUS_INVALID_PARAMS,
      &rp, sizeof(rp));

 hci_dev_lock(hdev);

 if (!hdev_is_powered(hdev)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
     MGMT_STATUS_NOT_POWERED, &rp,
     sizeof(rp));
  goto unlock;
 }

 if (cp->addr.type == BDADDR_BREDR)
  conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK,
            &cp->addr.bdaddr);
 else
  conn = hci_conn_hash_lookup_ba(hdev, LE_LINK, &cp->addr.bdaddr);

 if (!conn || conn->state != BT_CONNECTED) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
     MGMT_STATUS_NOT_CONNECTED, &rp,
     sizeof(rp));
  goto unlock;
 }

 if (pending_find_data(MGMT_OP_GET_CONN_INFO, hdev, conn)) {
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
     MGMT_STATUS_BUSY, &rp, sizeof(rp));
  goto unlock;
 }




 conn_info_age = hdev->conn_info_min_age +
   prandom_u32_max(hdev->conn_info_max_age -
     hdev->conn_info_min_age);




 if (time_after(jiffies, conn->conn_info_timestamp +
         msecs_to_jiffies(conn_info_age)) ||
     !conn->conn_info_timestamp) {
  struct hci_request req;
  struct hci_cp_read_tx_power req_txp_cp;
  struct hci_cp_read_rssi req_rssi_cp;
  struct mgmt_pending_cmd *cmd;

  hci_req_init(&req, hdev);
  req_rssi_cp.handle = cpu_to_le16(conn->handle);
  hci_req_add(&req, HCI_OP_READ_RSSI, sizeof(req_rssi_cp),
       &req_rssi_cp);




  if (!bdaddr_type_is_le(cp->addr.type) ||
      conn->tx_power == HCI_TX_POWER_INVALID) {
   req_txp_cp.handle = cpu_to_le16(conn->handle);
   req_txp_cp.type = 0x00;
   hci_req_add(&req, HCI_OP_READ_TX_POWER,
        sizeof(req_txp_cp), &req_txp_cp);
  }


  if (conn->max_tx_power == HCI_TX_POWER_INVALID) {
   req_txp_cp.handle = cpu_to_le16(conn->handle);
   req_txp_cp.type = 0x01;
   hci_req_add(&req, HCI_OP_READ_TX_POWER,
        sizeof(req_txp_cp), &req_txp_cp);
  }

  err = hci_req_run(&req, conn_info_refresh_complete);
  if (err < 0)
   goto unlock;

  cmd = mgmt_pending_add(sk, MGMT_OP_GET_CONN_INFO, hdev,
           data, len);
  if (!cmd) {
   err = -ENOMEM;
   goto unlock;
  }

  hci_conn_hold(conn);
  cmd->user_data = hci_conn_get(conn);
  cmd->cmd_complete = conn_info_cmd_complete;

  conn->conn_info_timestamp = jiffies;
 } else {

  rp.rssi = conn->rssi;
  rp.tx_power = conn->tx_power;
  rp.max_tx_power = conn->max_tx_power;

  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_GET_CONN_INFO,
     MGMT_STATUS_SUCCESS, &rp, sizeof(rp));
 }

unlock:
 hci_dev_unlock(hdev);
 return err;
}
