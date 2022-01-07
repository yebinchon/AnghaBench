
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_addr_info {scalar_t__ type; int bdaddr; } ;
struct mgmt_cp_add_remote_oob_ext_data {struct mgmt_addr_info addr; int * hash256; int * rand256; int * hash192; int * rand192; } ;
struct mgmt_cp_add_remote_oob_data {struct mgmt_addr_info addr; int * rand; int * hash; } ;
struct hci_dev {int id; int name; } ;


 scalar_t__ BDADDR_BREDR ;
 int BT_DBG (char*,int ) ;
 int MGMT_ADD_REMOTE_OOB_DATA_SIZE ;
 int MGMT_ADD_REMOTE_OOB_EXT_DATA_SIZE ;
 int MGMT_OP_ADD_REMOTE_OOB_DATA ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_SUCCESS ;
 int ZERO_KEY ;
 scalar_t__ bdaddr_type_is_le (scalar_t__) ;
 int bdaddr_type_is_valid (scalar_t__) ;
 int bt_dev_err (struct hci_dev*,char*,int ) ;
 int hci_add_remote_oob_data (struct hci_dev*,int *,scalar_t__,int *,int *,int *,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 scalar_t__ memcmp (int *,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_addr_info*,int) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;

__attribute__((used)) static int add_remote_oob_data(struct sock *sk, struct hci_dev *hdev,
          void *data, u16 len)
{
 struct mgmt_addr_info *addr = data;
 int err;

 BT_DBG("%s ", hdev->name);

 if (!bdaddr_type_is_valid(addr->type))
  return mgmt_cmd_complete(sk, hdev->id,
      MGMT_OP_ADD_REMOTE_OOB_DATA,
      MGMT_STATUS_INVALID_PARAMS,
      addr, sizeof(*addr));

 hci_dev_lock(hdev);

 if (len == MGMT_ADD_REMOTE_OOB_DATA_SIZE) {
  struct mgmt_cp_add_remote_oob_data *cp = data;
  u8 status;

  if (cp->addr.type != BDADDR_BREDR) {
   err = mgmt_cmd_complete(sk, hdev->id,
      MGMT_OP_ADD_REMOTE_OOB_DATA,
      MGMT_STATUS_INVALID_PARAMS,
      &cp->addr, sizeof(cp->addr));
   goto unlock;
  }

  err = hci_add_remote_oob_data(hdev, &cp->addr.bdaddr,
           cp->addr.type, cp->hash,
           cp->rand, ((void*)0), ((void*)0));
  if (err < 0)
   status = MGMT_STATUS_FAILED;
  else
   status = MGMT_STATUS_SUCCESS;

  err = mgmt_cmd_complete(sk, hdev->id,
     MGMT_OP_ADD_REMOTE_OOB_DATA, status,
     &cp->addr, sizeof(cp->addr));
 } else if (len == MGMT_ADD_REMOTE_OOB_EXT_DATA_SIZE) {
  struct mgmt_cp_add_remote_oob_ext_data *cp = data;
  u8 *rand192, *hash192, *rand256, *hash256;
  u8 status;

  if (bdaddr_type_is_le(cp->addr.type)) {



   if (memcmp(cp->rand192, ZERO_KEY, 16) ||
       memcmp(cp->hash192, ZERO_KEY, 16)) {
    err = mgmt_cmd_complete(sk, hdev->id,
       MGMT_OP_ADD_REMOTE_OOB_DATA,
       MGMT_STATUS_INVALID_PARAMS,
       addr, sizeof(*addr));
    goto unlock;
   }

   rand192 = ((void*)0);
   hash192 = ((void*)0);
  } else {



   if (!memcmp(cp->rand192, ZERO_KEY, 16) ||
       !memcmp(cp->hash192, ZERO_KEY, 16)) {
    rand192 = ((void*)0);
    hash192 = ((void*)0);
   } else {
    rand192 = cp->rand192;
    hash192 = cp->hash192;
   }
  }




  if (!memcmp(cp->rand256, ZERO_KEY, 16) ||
      !memcmp(cp->hash256, ZERO_KEY, 16)) {
   rand256 = ((void*)0);
   hash256 = ((void*)0);
  } else {
   rand256 = cp->rand256;
   hash256 = cp->hash256;
  }

  err = hci_add_remote_oob_data(hdev, &cp->addr.bdaddr,
           cp->addr.type, hash192, rand192,
           hash256, rand256);
  if (err < 0)
   status = MGMT_STATUS_FAILED;
  else
   status = MGMT_STATUS_SUCCESS;

  err = mgmt_cmd_complete(sk, hdev->id,
     MGMT_OP_ADD_REMOTE_OOB_DATA,
     status, &cp->addr, sizeof(cp->addr));
 } else {
  bt_dev_err(hdev, "add_remote_oob_data: invalid len of %u bytes",
      len);
  err = mgmt_cmd_status(sk, hdev->id, MGMT_OP_ADD_REMOTE_OOB_DATA,
          MGMT_STATUS_INVALID_PARAMS);
 }

unlock:
 hci_dev_unlock(hdev);
 return err;
}
