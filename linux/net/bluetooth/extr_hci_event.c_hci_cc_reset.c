
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {int le_resolv_list; int le_white_list; scalar_t__ ssp_debug_mode; int le_scan_type; scalar_t__ scan_rsp_data_len; int scan_rsp_data; scalar_t__ adv_data_len; int adv_data; void* adv_tx_power; void* inq_tx_power; int flags; int name; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int DISCOVERY_STOPPED ;
 int HCI_RESET ;
 void* HCI_TX_POWER_INVALID ;
 int LE_SCAN_PASSIVE ;
 int clear_bit (int ,int *) ;
 int hci_bdaddr_list_clear (int *) ;
 int hci_dev_clear_volatile_flags (struct hci_dev*) ;
 int hci_discovery_set_state (struct hci_dev*,int ) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void hci_cc_reset(struct hci_dev *hdev, struct sk_buff *skb)
{
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 clear_bit(HCI_RESET, &hdev->flags);

 if (status)
  return;


 hci_dev_clear_volatile_flags(hdev);

 hci_discovery_set_state(hdev, DISCOVERY_STOPPED);

 hdev->inq_tx_power = HCI_TX_POWER_INVALID;
 hdev->adv_tx_power = HCI_TX_POWER_INVALID;

 memset(hdev->adv_data, 0, sizeof(hdev->adv_data));
 hdev->adv_data_len = 0;

 memset(hdev->scan_rsp_data, 0, sizeof(hdev->scan_rsp_data));
 hdev->scan_rsp_data_len = 0;

 hdev->le_scan_type = LE_SCAN_PASSIVE;

 hdev->ssp_debug_mode = 0;

 hci_bdaddr_list_clear(&hdev->le_white_list);
 hci_bdaddr_list_clear(&hdev->le_resolv_list);
}
