
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfc_hci_dev {int quirks; } ;


 int NFC_HCI_ADMIN_PIPE ;
 int NFC_HCI_ADM_CLEAR_ALL_PIPE ;
 int NFC_HCI_QUIRK_SHORT_CLEAR ;
 int nfc_hci_execute_cmd (struct nfc_hci_dev*,int ,int ,int *,size_t,int *) ;
 int pr_debug (char*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int nfc_hci_clear_all_pipes(struct nfc_hci_dev *hdev)
{
 u8 param[2];
 size_t param_len = 2;




 pr_debug("\n");

 if (test_bit(NFC_HCI_QUIRK_SHORT_CLEAR, &hdev->quirks))
  param_len = 0;

 return nfc_hci_execute_cmd(hdev, NFC_HCI_ADMIN_PIPE,
       NFC_HCI_ADM_CLEAR_ALL_PIPE, param, param_len,
       ((void*)0));
}
