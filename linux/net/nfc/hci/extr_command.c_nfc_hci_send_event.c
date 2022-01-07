
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct nfc_hci_dev {size_t* gate2pipe; } ;


 int EADDRNOTAVAIL ;
 int NFC_HCI_HCP_EVENT ;
 size_t NFC_HCI_INVALID_PIPE ;
 int nfc_hci_hcp_message_tx (struct nfc_hci_dev*,size_t,int ,size_t,size_t const*,size_t,int *,int *,int ) ;
 int pr_debug (char*,size_t,size_t) ;

int nfc_hci_send_event(struct nfc_hci_dev *hdev, u8 gate, u8 event,
         const u8 *param, size_t param_len)
{
 u8 pipe;

 pr_debug("%d to gate %d\n", event, gate);

 pipe = hdev->gate2pipe[gate];
 if (pipe == NFC_HCI_INVALID_PIPE)
  return -EADDRNOTAVAIL;

 return nfc_hci_hcp_message_tx(hdev, pipe, NFC_HCI_HCP_EVENT, event,
          param, param_len, ((void*)0), ((void*)0), 0);
}
