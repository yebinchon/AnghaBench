
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;


 int NCI_OP_CORE_INIT_CMD ;
 int nci_send_cmd (struct nci_dev*,int ,int ,int *) ;

__attribute__((used)) static void nci_init_req(struct nci_dev *ndev, unsigned long opt)
{
 nci_send_cmd(ndev, NCI_OP_CORE_INIT_CMD, 0, ((void*)0));
}
