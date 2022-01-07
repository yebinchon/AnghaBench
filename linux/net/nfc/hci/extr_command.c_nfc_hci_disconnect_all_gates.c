
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int dummy; } ;


 int nfc_hci_clear_all_pipes (struct nfc_hci_dev*) ;
 int nfc_hci_reset_pipes (struct nfc_hci_dev*) ;
 int pr_debug (char*) ;

int nfc_hci_disconnect_all_gates(struct nfc_hci_dev *hdev)
{
 int r;

 pr_debug("\n");

 r = nfc_hci_clear_all_pipes(hdev);
 if (r < 0)
  return r;

 nfc_hci_reset_pipes(hdev);

 return 0;
}
