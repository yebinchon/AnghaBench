
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_hci_dev {TYPE_1__* ops; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* stop_poll ) (struct nfc_hci_dev*) ;} ;


 int NFC_HCI_EVT_END_OPERATION ;
 int NFC_HCI_RF_READER_A_GATE ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,int ) ;
 int stub1 (struct nfc_hci_dev*) ;

__attribute__((used)) static void hci_stop_poll(struct nfc_dev *nfc_dev)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(nfc_dev);

 if (hdev->ops->stop_poll)
  hdev->ops->stop_poll(hdev);
 else
  nfc_hci_send_event(hdev, NFC_HCI_RF_READER_A_GATE,
       NFC_HCI_EVT_END_OPERATION, ((void*)0), 0);
}
