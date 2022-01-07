
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nfc_hci_dev {TYPE_1__* ops; } ;
struct nfc_dev {int dummy; } ;
struct TYPE_2__ {int (* start_poll ) (struct nfc_hci_dev*,int ,int ) ;} ;


 int NFC_HCI_EVT_READER_REQUESTED ;
 int NFC_HCI_RF_READER_A_GATE ;
 struct nfc_hci_dev* nfc_get_drvdata (struct nfc_dev*) ;
 int nfc_hci_send_event (struct nfc_hci_dev*,int ,int ,int *,int ) ;
 int stub1 (struct nfc_hci_dev*,int ,int ) ;

__attribute__((used)) static int hci_start_poll(struct nfc_dev *nfc_dev,
     u32 im_protocols, u32 tm_protocols)
{
 struct nfc_hci_dev *hdev = nfc_get_drvdata(nfc_dev);

 if (hdev->ops->start_poll)
  return hdev->ops->start_poll(hdev, im_protocols, tm_protocols);
 else
  return nfc_hci_send_event(hdev, NFC_HCI_RF_READER_A_GATE,
       NFC_HCI_EVT_READER_REQUESTED,
       ((void*)0), 0);
}
