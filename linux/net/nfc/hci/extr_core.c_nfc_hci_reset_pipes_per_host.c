
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct nfc_hci_dev {TYPE_1__* pipes; } ;
struct TYPE_2__ {scalar_t__ dest_host; int gate; } ;


 int NFC_HCI_INVALID_GATE ;
 scalar_t__ NFC_HCI_INVALID_HOST ;
 int NFC_HCI_MAX_PIPES ;

void nfc_hci_reset_pipes_per_host(struct nfc_hci_dev *hdev, u8 host)
{
 int i = 0;

 for (i = 0; i < NFC_HCI_MAX_PIPES; i++) {
  if (hdev->pipes[i].dest_host != host)
   continue;

  hdev->pipes[i].gate = NFC_HCI_INVALID_GATE;
  hdev->pipes[i].dest_host = NFC_HCI_INVALID_HOST;
 }
}
