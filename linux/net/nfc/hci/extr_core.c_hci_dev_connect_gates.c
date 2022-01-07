
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_hci_gate {int pipe; int gate; } ;
struct nfc_hci_dev {int dummy; } ;


 int NFC_HCI_HOST_CONTROLLER_ID ;
 int nfc_hci_connect_gate (struct nfc_hci_dev*,int ,int ,int ) ;

__attribute__((used)) static int hci_dev_connect_gates(struct nfc_hci_dev *hdev, u8 gate_count,
     struct nfc_hci_gate *gates)
{
 int r;
 while (gate_count--) {
  r = nfc_hci_connect_gate(hdev, NFC_HCI_HOST_CONTROLLER_ID,
      gates->gate, gates->pipe);
  if (r < 0)
   return r;
  gates++;
 }

 return 0;
}
