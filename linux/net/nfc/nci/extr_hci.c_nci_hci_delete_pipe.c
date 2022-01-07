
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nci_dev {int dummy; } ;


 int NCI_HCI_ADMIN_GATE ;
 int NCI_HCI_ADM_DELETE_PIPE ;
 int nci_hci_send_cmd (struct nci_dev*,int ,int ,int *,int,int *) ;
 int pr_debug (char*) ;

__attribute__((used)) static int nci_hci_delete_pipe(struct nci_dev *ndev, u8 pipe)
{
 pr_debug("\n");

 return nci_hci_send_cmd(ndev, NCI_HCI_ADMIN_GATE,
    NCI_HCI_ADM_DELETE_PIPE, &pipe, 1, ((void*)0));
}
