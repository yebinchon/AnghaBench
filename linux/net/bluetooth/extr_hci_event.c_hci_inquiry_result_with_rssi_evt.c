
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct inquiry_info_with_rssi_and_pscan_mode {int pscan_mode; int rssi; int dev_class; int bdaddr; int clock_offset; int pscan_period_mode; int pscan_rep_mode; } ;
struct inquiry_info_with_rssi {int rssi; int dev_class; int bdaddr; int clock_offset; int pscan_period_mode; int pscan_rep_mode; } ;
struct inquiry_data {int pscan_mode; int ssp_mode; int rssi; int clock_offset; int dev_class; int pscan_period_mode; int pscan_rep_mode; int bdaddr; } ;
struct hci_dev {int name; } ;
typedef int __u8 ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,int) ;
 int HCI_PERIODIC_INQ ;
 int bacpy (int *,int *) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_inquiry_cache_update (struct hci_dev*,struct inquiry_data*,int) ;
 int memcpy (int ,int ,int) ;
 int mgmt_device_found (struct hci_dev*,int *,int ,int,int ,int ,int ,int *,int ,int *,int ) ;

__attribute__((used)) static void hci_inquiry_result_with_rssi_evt(struct hci_dev *hdev,
          struct sk_buff *skb)
{
 struct inquiry_data data;
 int num_rsp = *((__u8 *) skb->data);

 BT_DBG("%s num_rsp %d", hdev->name, num_rsp);

 if (!num_rsp)
  return;

 if (hci_dev_test_flag(hdev, HCI_PERIODIC_INQ))
  return;

 hci_dev_lock(hdev);

 if ((skb->len - 1) / num_rsp != sizeof(struct inquiry_info_with_rssi)) {
  struct inquiry_info_with_rssi_and_pscan_mode *info;
  info = (void *) (skb->data + 1);

  for (; num_rsp; num_rsp--, info++) {
   u32 flags;

   bacpy(&data.bdaddr, &info->bdaddr);
   data.pscan_rep_mode = info->pscan_rep_mode;
   data.pscan_period_mode = info->pscan_period_mode;
   data.pscan_mode = info->pscan_mode;
   memcpy(data.dev_class, info->dev_class, 3);
   data.clock_offset = info->clock_offset;
   data.rssi = info->rssi;
   data.ssp_mode = 0x00;

   flags = hci_inquiry_cache_update(hdev, &data, 0);

   mgmt_device_found(hdev, &info->bdaddr, ACL_LINK, 0x00,
       info->dev_class, info->rssi,
       flags, ((void*)0), 0, ((void*)0), 0);
  }
 } else {
  struct inquiry_info_with_rssi *info = (void *) (skb->data + 1);

  for (; num_rsp; num_rsp--, info++) {
   u32 flags;

   bacpy(&data.bdaddr, &info->bdaddr);
   data.pscan_rep_mode = info->pscan_rep_mode;
   data.pscan_period_mode = info->pscan_period_mode;
   data.pscan_mode = 0x00;
   memcpy(data.dev_class, info->dev_class, 3);
   data.clock_offset = info->clock_offset;
   data.rssi = info->rssi;
   data.ssp_mode = 0x00;

   flags = hci_inquiry_cache_update(hdev, &data, 0);

   mgmt_device_found(hdev, &info->bdaddr, ACL_LINK, 0x00,
       info->dev_class, info->rssi,
       flags, ((void*)0), 0, ((void*)0), 0);
  }
 }

 hci_dev_unlock(hdev);
}
