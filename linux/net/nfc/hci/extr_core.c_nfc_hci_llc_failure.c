
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfc_hci_dev {int dummy; } ;


 int nfc_hci_failure (struct nfc_hci_dev*,int) ;

__attribute__((used)) static void nfc_hci_llc_failure(struct nfc_hci_dev *hdev, int err)
{
 nfc_hci_failure(hdev, err);
}
