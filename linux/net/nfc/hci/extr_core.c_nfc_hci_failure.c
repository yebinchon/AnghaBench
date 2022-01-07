
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int msg_tx_mutex; int ndev; int * cmd_pending_msg; } ;


 int __nfc_hci_cmd_completion (struct nfc_hci_dev*,int,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfc_driver_failure (int ,int) ;

__attribute__((used)) static void nfc_hci_failure(struct nfc_hci_dev *hdev, int err)
{
 mutex_lock(&hdev->msg_tx_mutex);

 if (hdev->cmd_pending_msg == ((void*)0)) {
  nfc_driver_failure(hdev->ndev, err);
  goto exit;
 }

 __nfc_hci_cmd_completion(hdev, err, ((void*)0));

exit:
 mutex_unlock(&hdev->msg_tx_mutex);
}
