
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_hci_dev {int dummy; } ;
typedef int data_exchange_cb_t ;


 int MAX_FWI ;
 int NFC_HCI_HCP_COMMAND ;
 int nfc_hci_hcp_message_tx (struct nfc_hci_dev*,int ,int ,int ,int const*,size_t,int ,void*,int ) ;
 int pr_debug (char*,int ,int ,size_t) ;

__attribute__((used)) static int nfc_hci_execute_cmd_async(struct nfc_hci_dev *hdev, u8 pipe, u8 cmd,
          const u8 *param, size_t param_len,
          data_exchange_cb_t cb, void *cb_context)
{
 pr_debug("exec cmd async through pipe=%d, cmd=%d, plen=%zd\n", pipe,
   cmd, param_len);




 return nfc_hci_hcp_message_tx(hdev, pipe, NFC_HCI_HCP_COMMAND, cmd,
          param, param_len, cb, cb_context, MAX_FWI);
}
