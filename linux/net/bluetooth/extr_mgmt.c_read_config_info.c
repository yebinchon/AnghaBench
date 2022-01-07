
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_read_config_info {int missing_options; int supported_options; int manufacturer; } ;
struct hci_dev {int id; scalar_t__ set_bdaddr; int quirks; int manufacturer; int name; } ;
typedef int rp ;


 int BT_DBG (char*,struct sock*,int ) ;
 int HCI_QUIRK_EXTERNAL_CONFIG ;
 int MGMT_OPTION_EXTERNAL_CONFIG ;
 int MGMT_OPTION_PUBLIC_ADDRESS ;
 int MGMT_OP_READ_CONFIG_INFO ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int get_missing_options (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int memset (struct mgmt_rp_read_config_info*,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_read_config_info*,int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int read_config_info(struct sock *sk, struct hci_dev *hdev,
       void *data, u16 data_len)
{
 struct mgmt_rp_read_config_info rp;
 u32 options = 0;

 BT_DBG("sock %p %s", sk, hdev->name);

 hci_dev_lock(hdev);

 memset(&rp, 0, sizeof(rp));
 rp.manufacturer = cpu_to_le16(hdev->manufacturer);

 if (test_bit(HCI_QUIRK_EXTERNAL_CONFIG, &hdev->quirks))
  options |= MGMT_OPTION_EXTERNAL_CONFIG;

 if (hdev->set_bdaddr)
  options |= MGMT_OPTION_PUBLIC_ADDRESS;

 rp.supported_options = cpu_to_le32(options);
 rp.missing_options = get_missing_options(hdev);

 hci_dev_unlock(hdev);

 return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_READ_CONFIG_INFO, 0,
     &rp, sizeof(rp));
}
