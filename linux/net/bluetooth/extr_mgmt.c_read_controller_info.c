
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct mgmt_rp_read_info {int short_name; int name; int dev_class; void* current_settings; void* supported_settings; int manufacturer; int version; int bdaddr; } ;
struct hci_dev {int id; int short_name; int dev_name; int dev_class; int manufacturer; int hci_ver; int bdaddr; int name; } ;
typedef int rp ;


 int BT_DBG (char*,struct sock*,int ) ;
 int MGMT_OP_READ_INFO ;
 int bacpy (int *,int *) ;
 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int get_current_settings (struct hci_dev*) ;
 int get_supported_settings (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct mgmt_rp_read_info*,int ,int) ;
 int mgmt_cmd_complete (struct sock*,int ,int ,int ,struct mgmt_rp_read_info*,int) ;

__attribute__((used)) static int read_controller_info(struct sock *sk, struct hci_dev *hdev,
    void *data, u16 data_len)
{
 struct mgmt_rp_read_info rp;

 BT_DBG("sock %p %s", sk, hdev->name);

 hci_dev_lock(hdev);

 memset(&rp, 0, sizeof(rp));

 bacpy(&rp.bdaddr, &hdev->bdaddr);

 rp.version = hdev->hci_ver;
 rp.manufacturer = cpu_to_le16(hdev->manufacturer);

 rp.supported_settings = cpu_to_le32(get_supported_settings(hdev));
 rp.current_settings = cpu_to_le32(get_current_settings(hdev));

 memcpy(rp.dev_class, hdev->dev_class, 3);

 memcpy(rp.name, hdev->dev_name, sizeof(hdev->dev_name));
 memcpy(rp.short_name, hdev->short_name, sizeof(hdev->short_name));

 hci_dev_unlock(hdev);

 return mgmt_cmd_complete(sk, hdev->id, MGMT_OP_READ_INFO, 0, &rp,
     sizeof(rp));
}
