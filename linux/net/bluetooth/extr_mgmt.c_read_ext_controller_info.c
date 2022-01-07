
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_read_ext_info {void* eir_len; int eir; void* current_settings; void* supported_settings; void* manufacturer; int version; int bdaddr; } ;
struct hci_dev {int id; scalar_t__ manufacturer; int hci_ver; int bdaddr; int name; } ;
typedef int buf ;


 int BT_DBG (char*,struct sock*,int ) ;
 int HCI_MGMT_DEV_CLASS_EVENTS ;
 int HCI_MGMT_EXT_INFO_EVENTS ;
 int HCI_MGMT_LOCAL_NAME_EVENTS ;
 int MGMT_OP_READ_EXT_INFO ;
 scalar_t__ append_eir_data_to_buf (struct hci_dev*,int ) ;
 int bacpy (int *,int *) ;
 void* cpu_to_le16 (scalar_t__) ;
 void* cpu_to_le32 (int ) ;
 int get_current_settings (struct hci_dev*) ;
 int get_supported_settings (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_sock_clear_flag (struct sock*,int ) ;
 int hci_sock_set_flag (struct sock*,int ) ;
 int memset (char**,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_read_ext_info*,scalar_t__) ;

__attribute__((used)) static int read_ext_controller_info(struct sock *sk, struct hci_dev *hdev,
        void *data, u16 data_len)
{
 char buf[512];
 struct mgmt_rp_read_ext_info *rp = (void *)buf;
 u16 eir_len;

 BT_DBG("sock %p %s", sk, hdev->name);

 memset(&buf, 0, sizeof(buf));

 hci_dev_lock(hdev);

 bacpy(&rp->bdaddr, &hdev->bdaddr);

 rp->version = hdev->hci_ver;
 rp->manufacturer = cpu_to_le16(hdev->manufacturer);

 rp->supported_settings = cpu_to_le32(get_supported_settings(hdev));
 rp->current_settings = cpu_to_le32(get_current_settings(hdev));


 eir_len = append_eir_data_to_buf(hdev, rp->eir);
 rp->eir_len = cpu_to_le16(eir_len);

 hci_dev_unlock(hdev);






 hci_sock_set_flag(sk, HCI_MGMT_EXT_INFO_EVENTS);
 hci_sock_clear_flag(sk, HCI_MGMT_DEV_CLASS_EVENTS);
 hci_sock_clear_flag(sk, HCI_MGMT_LOCAL_NAME_EVENTS);

 return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_READ_EXT_INFO, 0, rp,
     sizeof(*rp) + eir_len);
}
