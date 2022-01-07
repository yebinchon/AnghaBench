
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {scalar_t__ data; } ;
struct inquiry_data {int pscan_mode; int ssp_mode; int rssi; int clock_offset; int dev_class; int pscan_period_mode; int pscan_rep_mode; int bdaddr; } ;
struct hci_dev {int name; } ;
struct extended_inquiry_info {int data; int rssi; int dev_class; int bdaddr; int clock_offset; int pscan_period_mode; int pscan_rep_mode; } ;
typedef int __u8 ;


 int ACL_LINK ;
 int BT_DBG (char*,int ,int) ;
 int EIR_NAME_COMPLETE ;
 int HCI_MGMT ;
 int HCI_PERIODIC_INQ ;
 int bacpy (int *,int *) ;
 int eir_get_data (int ,int,int ,int *) ;
 size_t eir_get_length (int ,int) ;
 int hci_dev_lock (struct hci_dev*) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_inquiry_cache_update (struct hci_dev*,struct inquiry_data*,int) ;
 int memcpy (int ,int ,int) ;
 int mgmt_device_found (struct hci_dev*,int *,int ,int,int ,int ,int ,int ,size_t,int *,int ) ;

__attribute__((used)) static void hci_extended_inquiry_result_evt(struct hci_dev *hdev,
         struct sk_buff *skb)
{
 struct inquiry_data data;
 struct extended_inquiry_info *info = (void *) (skb->data + 1);
 int num_rsp = *((__u8 *) skb->data);
 size_t eir_len;

 BT_DBG("%s num_rsp %d", hdev->name, num_rsp);

 if (!num_rsp)
  return;

 if (hci_dev_test_flag(hdev, HCI_PERIODIC_INQ))
  return;

 hci_dev_lock(hdev);

 for (; num_rsp; num_rsp--, info++) {
  u32 flags;
  bool name_known;

  bacpy(&data.bdaddr, &info->bdaddr);
  data.pscan_rep_mode = info->pscan_rep_mode;
  data.pscan_period_mode = info->pscan_period_mode;
  data.pscan_mode = 0x00;
  memcpy(data.dev_class, info->dev_class, 3);
  data.clock_offset = info->clock_offset;
  data.rssi = info->rssi;
  data.ssp_mode = 0x01;

  if (hci_dev_test_flag(hdev, HCI_MGMT))
   name_known = eir_get_data(info->data,
        sizeof(info->data),
        EIR_NAME_COMPLETE, ((void*)0));
  else
   name_known = 1;

  flags = hci_inquiry_cache_update(hdev, &data, name_known);

  eir_len = eir_get_length(info->data, sizeof(info->data));

  mgmt_device_found(hdev, &info->bdaddr, ACL_LINK, 0x00,
      info->dev_class, info->rssi,
      flags, info->data, eir_len, ((void*)0), 0);
 }

 hci_dev_unlock(hdev);
}
