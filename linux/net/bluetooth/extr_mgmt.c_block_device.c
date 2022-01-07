
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct TYPE_3__ {int type; int bdaddr; } ;
struct mgmt_cp_block_device {TYPE_1__ addr; } ;
struct hci_dev {int id; int blacklist; int name; } ;


 int BT_DBG (char*,int ) ;
 int MGMT_EV_DEVICE_BLOCKED ;
 int MGMT_OP_BLOCK_DEVICE ;
 int MGMT_STATUS_FAILED ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_SUCCESS ;
 int bdaddr_type_is_valid (int ) ;
 int hci_bdaddr_list_add (int *,int *,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,TYPE_1__*,int) ;
 int mgmt_event (int ,struct hci_dev*,TYPE_1__*,int,struct sock*) ;

__attribute__((used)) static int block_device(struct sock *sk, struct hci_dev *hdev, void *data,
   u16 len)
{
 struct mgmt_cp_block_device *cp = data;
 u8 status;
 int err;

 BT_DBG("%s", hdev->name);

 if (!bdaddr_type_is_valid(cp->addr.type))
  return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_BLOCK_DEVICE,
      MGMT_STATUS_INVALID_PARAMS,
      &cp->addr, sizeof(cp->addr));

 hci_dev_lock(hdev);

 err = hci_bdaddr_list_add(&hdev->blacklist, &cp->addr.bdaddr,
      cp->addr.type);
 if (err < 0) {
  status = MGMT_STATUS_FAILED;
  goto done;
 }

 mgmt_event(MGMT_EV_DEVICE_BLOCKED, hdev, &cp->addr, sizeof(cp->addr),
     sk);
 status = MGMT_STATUS_SUCCESS;

done:
 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_BLOCK_DEVICE, status,
    &cp->addr, sizeof(cp->addr));

 hci_dev_unlock(hdev);

 return err;
}
