
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_ops {scalar_t__ n_prop_ops; int * prop_ops; int send; int close; int open; } ;
struct nci_dev {int tx_headroom; int tx_tailroom; int nfc_dev; int hci_dev; int req_completion; struct nci_ops* ops; } ;
typedef int __u32 ;


 int GFP_KERNEL ;
 scalar_t__ NCI_DATA_HDR_SIZE ;
 scalar_t__ NCI_MAX_PROPRIETARY_CMD ;
 int init_completion (int *) ;
 int kfree (struct nci_dev*) ;
 struct nci_dev* kzalloc (int,int ) ;
 int nci_hci_allocate (struct nci_dev*) ;
 int nci_nfc_ops ;
 int nfc_allocate_device (int *,int ,scalar_t__,int) ;
 int nfc_free_device (int ) ;
 int nfc_set_drvdata (int ,struct nci_dev*) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,scalar_t__) ;

struct nci_dev *nci_allocate_device(struct nci_ops *ops,
        __u32 supported_protocols,
        int tx_headroom, int tx_tailroom)
{
 struct nci_dev *ndev;

 pr_debug("supported_protocols 0x%x\n", supported_protocols);

 if (!ops->open || !ops->close || !ops->send)
  return ((void*)0);

 if (!supported_protocols)
  return ((void*)0);

 ndev = kzalloc(sizeof(struct nci_dev), GFP_KERNEL);
 if (!ndev)
  return ((void*)0);

 ndev->ops = ops;

 if (ops->n_prop_ops > NCI_MAX_PROPRIETARY_CMD) {
  pr_err("Too many proprietary commands: %zd\n",
         ops->n_prop_ops);
  ops->prop_ops = ((void*)0);
  ops->n_prop_ops = 0;
 }

 ndev->tx_headroom = tx_headroom;
 ndev->tx_tailroom = tx_tailroom;
 init_completion(&ndev->req_completion);

 ndev->nfc_dev = nfc_allocate_device(&nci_nfc_ops,
         supported_protocols,
         tx_headroom + NCI_DATA_HDR_SIZE,
         tx_tailroom);
 if (!ndev->nfc_dev)
  goto free_nci;

 ndev->hci_dev = nci_hci_allocate(ndev);
 if (!ndev->hci_dev)
  goto free_nfc;

 nfc_set_drvdata(ndev->nfc_dev, ndev);

 return ndev;

free_nfc:
 nfc_free_device(ndev->nfc_dev);
free_nci:
 kfree(ndev);
 return ((void*)0);
}
