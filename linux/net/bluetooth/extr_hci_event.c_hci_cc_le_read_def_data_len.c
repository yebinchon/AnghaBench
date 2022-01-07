
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_rp_le_read_def_data_len {int tx_time; int tx_len; scalar_t__ status; } ;
struct hci_dev {void* le_def_tx_time; void* le_def_tx_len; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 void* le16_to_cpu (int ) ;

__attribute__((used)) static void hci_cc_le_read_def_data_len(struct hci_dev *hdev,
     struct sk_buff *skb)
{
 struct hci_rp_le_read_def_data_len *rp = (void *) skb->data;

 BT_DBG("%s status 0x%2.2x", hdev->name, rp->status);

 if (rp->status)
  return;

 hdev->le_def_tx_len = le16_to_cpu(rp->tx_len);
 hdev->le_def_tx_time = le16_to_cpu(rp->tx_time);
}
