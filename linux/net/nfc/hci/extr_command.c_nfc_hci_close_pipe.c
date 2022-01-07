
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_hci_dev {int dummy; } ;


 int NFC_HCI_ANY_CLOSE_PIPE ;
 int nfc_hci_execute_cmd (struct nfc_hci_dev*,int ,int ,int *,int ,int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static int nfc_hci_close_pipe(struct nfc_hci_dev *hdev, u8 pipe)
{
 pr_debug("\n");

 return nfc_hci_execute_cmd(hdev, pipe, NFC_HCI_ANY_CLOSE_PIPE,
       ((void*)0), 0, ((void*)0));
}
