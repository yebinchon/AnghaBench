
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_get_adv_size_info {int instance; void* max_scan_rsp_len; void* max_adv_data_len; int flags; } ;
struct mgmt_cp_get_adv_size_info {int instance; int flags; } ;
struct hci_dev {int id; int name; } ;
typedef int rp ;


 int BT_DBG (char*,int ) ;
 int HCI_MAX_ADV_INSTANCES ;
 int MGMT_OP_GET_ADV_SIZE_INFO ;
 int MGMT_STATUS_INVALID_PARAMS ;
 int MGMT_STATUS_REJECTED ;
 int MGMT_STATUS_SUCCESS ;
 int __le32_to_cpu (int ) ;
 int get_supported_adv_flags (struct hci_dev*) ;
 int lmp_le_capable (struct hci_dev*) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_get_adv_size_info*,int) ;
 int mgmt_cmd_status (struct sock*,int ,int ,int ) ;
 void* tlv_data_max_len (struct hci_dev*,int,int) ;

__attribute__((used)) static int get_adv_size_info(struct sock *sk, struct hci_dev *hdev,
        void *data, u16 data_len)
{
 struct mgmt_cp_get_adv_size_info *cp = data;
 struct mgmt_rp_get_adv_size_info rp;
 u32 flags, supported_flags;
 int err;

 BT_DBG("%s", hdev->name);

 if (!lmp_le_capable(hdev))
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_GET_ADV_SIZE_INFO,
           MGMT_STATUS_REJECTED);

 if (cp->instance < 1 || cp->instance > HCI_MAX_ADV_INSTANCES)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_GET_ADV_SIZE_INFO,
           MGMT_STATUS_INVALID_PARAMS);

 flags = __le32_to_cpu(cp->flags);




 supported_flags = get_supported_adv_flags(hdev);
 if (flags & ~supported_flags)
  return mgmt_cmd_status(sk, hdev->id, MGMT_OP_GET_ADV_SIZE_INFO,
           MGMT_STATUS_INVALID_PARAMS);

 rp.instance = cp->instance;
 rp.flags = cp->flags;
 rp.max_adv_data_len = tlv_data_max_len(hdev, flags, 1);
 rp.max_scan_rsp_len = tlv_data_max_len(hdev, flags, 0);

 err = mgmt_cmd_complete(sk, hdev->id, MGMT_OP_GET_ADV_SIZE_INFO,
    MGMT_STATUS_SUCCESS, &rp, sizeof(rp));

 return err;
}
