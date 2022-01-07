
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct nfc_hci_dev {size_t* gate2pipe; } ;
typedef int data_exchange_cb_t ;


 int EADDRNOTAVAIL ;
 size_t NFC_HCI_INVALID_PIPE ;
 int nfc_hci_execute_cmd_async (struct nfc_hci_dev*,size_t,size_t,size_t const*,size_t,int ,void*) ;
 int pr_debug (char*) ;

int nfc_hci_send_cmd_async(struct nfc_hci_dev *hdev, u8 gate, u8 cmd,
      const u8 *param, size_t param_len,
      data_exchange_cb_t cb, void *cb_context)
{
 u8 pipe;

 pr_debug("\n");

 pipe = hdev->gate2pipe[gate];
 if (pipe == NFC_HCI_INVALID_PIPE)
  return -EADDRNOTAVAIL;

 return nfc_hci_execute_cmd_async(hdev, pipe, cmd, param, param_len,
      cb, cb_context);
}
