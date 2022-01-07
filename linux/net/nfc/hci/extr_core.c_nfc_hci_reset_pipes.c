
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfc_hci_dev {int gate2pipe; TYPE_1__* pipes; } ;
struct TYPE_2__ {int dest_host; int gate; } ;


 int NFC_HCI_INVALID_GATE ;
 int NFC_HCI_INVALID_HOST ;
 int NFC_HCI_INVALID_PIPE ;
 int NFC_HCI_MAX_PIPES ;
 int memset (int ,int ,int) ;

void nfc_hci_reset_pipes(struct nfc_hci_dev *hdev)
{
 int i = 0;

 for (i = 0; i < NFC_HCI_MAX_PIPES; i++) {
  hdev->pipes[i].gate = NFC_HCI_INVALID_GATE;
  hdev->pipes[i].dest_host = NFC_HCI_INVALID_HOST;
 }
 memset(hdev->gate2pipe, NFC_HCI_INVALID_PIPE, sizeof(hdev->gate2pipe));
}
