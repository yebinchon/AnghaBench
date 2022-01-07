
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_dev {void* le_def_tx_time; void* le_def_tx_len; int name; } ;
struct hci_cp_le_write_def_data_len {int tx_time; int tx_len; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_OP_LE_WRITE_DEF_DATA_LEN ;
 struct hci_cp_le_write_def_data_len* hci_sent_cmd_data (struct hci_dev*,int ) ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static void hci_cc_le_write_def_data_len(struct hci_dev *hdev,
      struct sk_buff *skb)
{
 struct hci_cp_le_write_def_data_len *sent;
 __u8 status = *((__u8 *) skb->data);

 BT_DBG("%s status 0x%2.2x", hdev->name, status);

 if (status)
  return;

 sent = hci_sent_cmd_data(hdev, HCI_OP_LE_WRITE_DEF_DATA_LEN);
 if (!sent)
  return;

 hdev->le_def_tx_len = le16_to_cpu(sent->tx_len);
 hdev->le_def_tx_time = le16_to_cpu(sent->tx_time);
}
