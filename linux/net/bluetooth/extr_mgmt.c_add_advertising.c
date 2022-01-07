
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_add_advertising {int instance; } ;
struct mgmt_pending_cmd {int dummy; } ;
struct mgmt_cp_add_advertising {int instance; scalar_t__ adv_data_len; scalar_t__ scan_rsp_len; scalar_t__ data; int duration; int timeout; int flags; } ;
struct hci_request {int dummy; } ;
struct hci_dev {unsigned int adv_instance_cnt; int cur_adv_instance; int id; int adv_instance_timeout; int name; } ;
struct adv_info {int instance; } ;
typedef int rp ;


 int BT_DBG (char*,int ) ;
 int ENOMEM ;
 int HCI_ADVERTISING ;
 int HCI_MAX_ADV_INSTANCES ;
 int MGMT_ADV_FLAG_SEC_MASK ;
 int MGMT_OP_ADD_ADVERTISING ;
 int MGMT_OP_REMOVE_ADVERTISING ;
 int MGMT_OP_SET_LE ;
 int MGMT_STATUS_BUSY ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_REJECTED ;
 int MGMT_STATUS_SUCCESS ;
 int __hci_req_schedule_adv_instance (struct hci_request*,int,int) ;
 scalar_t__ __le16_to_cpu (int ) ;
 int __le32_to_cpu (int ) ;
 int add_advertising_complete ;
 int cancel_adv_timeout (struct hci_dev*) ;
 int get_supported_adv_flags (struct hci_dev*) ;
 int hci_add_adv_instance (struct hci_dev*,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct adv_info* hci_get_next_instance (struct hci_dev*,int) ;
 int hci_req_init (struct hci_request*,struct hci_dev*) ;
 int hci_req_run (struct hci_request*,int ) ;
 int hdev_is_powered (struct hci_dev*) ;
 int mgmt_advertising_added (struct sock*,struct hci_dev*,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_add_advertising*,int) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int) ;
 int mgmt_le_support (struct hci_dev*) ;
 struct mgmt_pending_cmd* mgmt_pending_add (struct sock*,int ,struct hci_dev*,void*,scalar_t__) ;
 int mgmt_pending_remove (struct mgmt_pending_cmd*) ;
 scalar_t__ pending_find (int ,struct hci_dev*) ;
 int tlv_data_is_valid (struct hci_dev*,int,scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int add_advertising(struct sock *sk, struct hci_dev *hdev,
      void *data, u16 data_len)
{
 struct mgmt_cp_add_advertising *cp = data;
 struct mgmt_rp_add_advertising rp;
 u32 flags;
 u32 supported_flags, phy_flags;
 u8 status;
 u16 timeout, duration;
 unsigned int prev_instance_cnt = hdev->adv_instance_cnt;
 u8 schedule_instance = 0;
 struct adv_info *next_instance;
 int err;
 struct mgmt_pending_cmd *cmd;
 struct hci_request req;

 BT_DBG("%s", hdev->name);

 status = mgmt_le_support(hdev);
 if (status)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
           status);

 if (cp->instance < 1 || cp->instance > HCI_MAX_ADV_INSTANCES)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
           MGMT_STATUS_INVALID_PARAMS);

 if (data_len != sizeof(*cp) + cp->adv_data_len + cp->scan_rsp_len)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
           MGMT_STATUS_INVALID_PARAMS);

 flags = __le32_to_cpu(cp->flags);
 timeout = __le16_to_cpu(cp->timeout);
 duration = __le16_to_cpu(cp->duration);




 supported_flags = get_supported_adv_flags(hdev);
 phy_flags = flags & MGMT_ADV_FLAG_SEC_MASK;
 if (flags & ~supported_flags ||
     ((phy_flags && (phy_flags ^ (phy_flags & -phy_flags)))))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
           MGMT_STATUS_INVALID_PARAMS);

 hci_dev_lock(hdev);

 if (timeout && !hdev_is_powered(hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
          MGMT_STATUS_REJECTED);
  goto unlock;
 }

 if (pending_find(MGMT_OP_ADD_ADVERTISING, hdev) ||
     pending_find(MGMT_OP_REMOVE_ADVERTISING, hdev) ||
     pending_find(MGMT_OP_SET_LE, hdev)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
          MGMT_STATUS_BUSY);
  goto unlock;
 }

 if (!tlv_data_is_valid(hdev, flags, cp->data, cp->adv_data_len, 1) ||
     !tlv_data_is_valid(hdev, flags, cp->data + cp->adv_data_len,
          cp->scan_rsp_len, 0)) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
          MGMT_STATUS_INVALID_PARAMS);
  goto unlock;
 }

 err = hci_add_adv_instance(hdev, cp->instance, flags,
       cp->adv_data_len, cp->data,
       cp->scan_rsp_len,
       cp->data + cp->adv_data_len,
       timeout, duration);
 if (err < 0) {
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
          MGMT_STATUS_FAILED);
  goto unlock;
 }




 if (hdev->adv_instance_cnt > prev_instance_cnt)
  mgmt_advertising_added(sk, hdev, cp->instance);

 if (hdev->cur_adv_instance == cp->instance) {





  cancel_adv_timeout(hdev);

  next_instance = hci_get_next_instance(hdev, cp->instance);
  if (next_instance)
   schedule_instance = next_instance->instance;
 } else if (!hdev->adv_instance_timeout) {



  schedule_instance = cp->instance;
 }





 if (!hdev_is_powered(hdev) ||
     hci_dev_test_flag(hdev, HCI_ADVERTISING) ||
     !schedule_instance) {
  rp.instance = cp->instance;
  err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_ADD_ADVERTISING,
     MGMT_STATUS_SUCCESS, &rp, sizeof(rp));
  goto unlock;
 }




 cmd = mgmt_pending_add(sk, MGMT_OP_ADD_ADVERTISING, hdev, data,
          data_len);
 if (!cmd) {
  err = -ENOMEM;
  goto unlock;
 }

 hci_req_init(&req, hdev);

 err = __hci_req_schedule_adv_instance(&req, schedule_instance, 1);

 if (!err)
  err = hci_req_run(&req, add_advertising_complete);

 if (err < 0)
  mgmt_pending_remove(cmd);

unlock:
 hci_dev_unlock(hdev);

 return err;
}
