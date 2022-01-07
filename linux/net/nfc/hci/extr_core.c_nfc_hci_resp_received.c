
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct nfc_hci_dev {int msg_tx_mutex; int * cmd_pending_msg; } ;


 int __nfc_hci_cmd_completion (struct nfc_hci_dev*,int ,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfc_hci_result_to_errno (int ) ;

void nfc_hci_resp_received(struct nfc_hci_dev *hdev, u8 result,
      struct sk_buff *skb)
{
 mutex_lock(&hdev->msg_tx_mutex);

 if (hdev->cmd_pending_msg == ((void*)0)) {
  kfree_skb(skb);
  goto exit;
 }

 __nfc_hci_cmd_completion(hdev, nfc_hci_result_to_errno(result), skb);

exit:
 mutex_unlock(&hdev->msg_tx_mutex);
}
