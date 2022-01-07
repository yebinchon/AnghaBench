
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nfc_hci_ops {int * xmit; } ;
struct nfc_hci_init_data {int dummy; } ;
struct nfc_hci_dev {int max_data_link_payload; unsigned long quirks; int ndev; struct nfc_hci_init_data init_data; struct nfc_hci_ops* ops; int * llc; } ;


 int GFP_KERNEL ;
 scalar_t__ HCI_CMDS_HEADROOM ;
 int hci_nfc_ops ;
 int kfree (struct nfc_hci_dev*) ;
 struct nfc_hci_dev* kzalloc (int,int ) ;
 int nfc_allocate_device (int *,scalar_t__,scalar_t__,int) ;
 int nfc_hci_llc_failure ;
 int nfc_hci_recv_from_llc ;
 int nfc_hci_reset_pipes (struct nfc_hci_dev*) ;
 int * nfc_llc_allocate (char const*,struct nfc_hci_dev*,int *,int ,int,int,int ) ;
 int nfc_llc_free (int *) ;
 int nfc_set_drvdata (int ,struct nfc_hci_dev*) ;

struct nfc_hci_dev *nfc_hci_allocate_device(struct nfc_hci_ops *ops,
         struct nfc_hci_init_data *init_data,
         unsigned long quirks,
         u32 protocols,
         const char *llc_name,
         int tx_headroom,
         int tx_tailroom,
         int max_link_payload)
{
 struct nfc_hci_dev *hdev;

 if (ops->xmit == ((void*)0))
  return ((void*)0);

 if (protocols == 0)
  return ((void*)0);

 hdev = kzalloc(sizeof(struct nfc_hci_dev), GFP_KERNEL);
 if (hdev == ((void*)0))
  return ((void*)0);

 hdev->llc = nfc_llc_allocate(llc_name, hdev, ops->xmit,
         nfc_hci_recv_from_llc, tx_headroom,
         tx_tailroom, nfc_hci_llc_failure);
 if (hdev->llc == ((void*)0)) {
  kfree(hdev);
  return ((void*)0);
 }

 hdev->ndev = nfc_allocate_device(&hci_nfc_ops, protocols,
      tx_headroom + HCI_CMDS_HEADROOM,
      tx_tailroom);
 if (!hdev->ndev) {
  nfc_llc_free(hdev->llc);
  kfree(hdev);
  return ((void*)0);
 }

 hdev->ops = ops;
 hdev->max_data_link_payload = max_link_payload;
 hdev->init_data = *init_data;

 nfc_set_drvdata(hdev->ndev, hdev);

 nfc_hci_reset_pipes(hdev);

 hdev->quirks = quirks;

 return hdev;
}
