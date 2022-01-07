
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int bdaddr; } ;
struct mgmt_cp_remove_remote_oob_data {TYPE_1__ addr; } ;
struct hci_dev {int id; int name; } ;


 int BDADDR_ANY ;
 scalar_t__ BDADDR_BREDR ;
 int BT_DBG (char*,int ) ;
 int MGMT_OP_REMOVE_REMOTE_OOB_DATA ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_SUCCESS ;
 int bacmp (int *,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_remote_oob_data_clear (struct hci_dev*) ;
 int hci_remove_remote_oob_data (struct hci_dev*,int *,scalar_t__) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,TYPE_1__*,int) ;

__attribute__((used)) static int remove_remote_oob_data(struct sock *sk, struct hci_dev *hdev,
      void *data, u16 len)
{
 struct mgmt_cp_remove_remote_oob_data *cp = data;
 u8 status;
 int err;

 BT_DBG("%s", hdev->name);

 if (cp->addr.type != BDADDR_BREDR)
  return mgmt_cmd_complete(sk, hdev->id,
      MGMT_OP_REMOVE_REMOTE_OOB_DATA,
      MGMT_STATUS_INVALID_PARAMS,
      &cp->addr, sizeof(cp->addr));

 hci_dev_lock(hdev);

 if (!bacmp(&cp->addr.bdaddr, BDADDR_ANY)) {
  hci_remote_oob_data_clear(hdev);
  status = MGMT_STATUS_SUCCESS;
  goto done;
 }

 err = hci_remove_remote_oob_data(hdev, &cp->addr.bdaddr, cp->addr.type);
 if (err < 0)
  status = MGMT_STATUS_INVALID_PARAMS;
 else
  status = MGMT_STATUS_SUCCESS;

done:
 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_REMOVE_REMOTE_OOB_DATA,
    status, &cp->addr, sizeof(cp->addr));

 hci_dev_unlock(hdev);
 return err;
}
