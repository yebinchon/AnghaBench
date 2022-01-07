
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct inquiry_info {int dev_class; int bdaddr; int clock_offset; int pscan_mode; int pscan_period_mode; int pscan_rep_mode; } ;
struct inquiry_data {int ssp_mode; int rssi; int clock_offset; int dev_class; int pscan_mode; int pscan_period_mode; int pscan_rep_mode; int bdaddr; } ;
struct hci_dev {int name; } ;
typedef int __u8 ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,int) ;
 int HCI_PERIODIC_INQ ;
 int HCI_RSSI_INVALID ;
 int bacpy (int *,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_inquiry_cache_update (struct hci_dev*,struct inquiry_data*,int) ;
 int memcpy (int ,int ,int) ;
 int mgmt_device_found (struct hci_dev*,int *,int ,int,int ,int ,int ,int *,int ,int *,int ) ;

__attribute__((used)) static void hci_inquiry_result_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct inquiry_data data;
 struct inquiry_info *info = (void *) (skb->data + 1);
 int num_rsp = *((__u8 *) skb->data);

 BT_DBG("%s num_rsp %d", hdev->name, num_rsp);

 if (!num_rsp)
  return;

 if (hci_dev_test_flag(hdev, HCI_PERIODIC_INQ))
  return;

 hci_dev_lock(hdev);

 for (; num_rsp; num_rsp--, info++) {
  u32 flags;

  bacpy(&data.bdaddr, &info->bdaddr);
  data.pscan_rep_mode = info->pscan_rep_mode;
  data.pscan_period_mode = info->pscan_period_mode;
  data.pscan_mode = info->pscan_mode;
  memcpy(data.dev_class, info->dev_class, 3);
  data.clock_offset = info->clock_offset;
  data.rssi = HCI_RSSI_INVALID;
  data.ssp_mode = 0x00;

  flags = hci_inquiry_cache_update(hdev, &data, 0);

  mgmt_device_found(hdev, &info->bdaddr, ACL_LINK, 0x00,
      info->dev_class, HCI_RSSI_INVALID,
      flags, ((void*)0), 0, ((void*)0), 0);
 }

 hci_dev_unlock(hdev);
}
