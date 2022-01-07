
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int hci_dev; } ;


 int NCI_HCI_ADMIN_GATE ;
 int NCI_HCI_ADM_CLEAR_ALL_PIPE ;
 int nci_hci_reset_pipes (int ) ;
 int nci_hci_send_cmd (struct nci_dev*,int ,int ,int *,int ,int *) ;

int nci_hci_clear_all_pipes(struct nci_dev *ndev)
{
 int r;

 r = nci_hci_send_cmd(ndev, NCI_HCI_ADMIN_GATE,
        NCI_HCI_ADM_CLEAR_ALL_PIPE, ((void*)0), 0, ((void*)0));
 if (r < 0)
  return r;

 nci_hci_reset_pipes(ndev->hci_dev);
 return r;
}
