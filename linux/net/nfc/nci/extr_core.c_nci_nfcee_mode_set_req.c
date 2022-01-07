
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_nfcee_mode_set_cmd {int dummy; } ;
struct nci_dev {int dummy; } ;


 int NCI_OP_NFCEE_MODE_SET_CMD ;
 int nci_send_cmd (struct nci_dev*,int ,int,struct nci_nfcee_mode_set_cmd*) ;

__attribute__((used)) static void nci_nfcee_mode_set_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_nfcee_mode_set_cmd *cmd =
     (struct nci_nfcee_mode_set_cmd *)opt;

 nci_send_cmd(ndev, NCI_OP_NFCEE_MODE_SET_CMD,
       sizeof(struct nci_nfcee_mode_set_cmd), cmd);
}
