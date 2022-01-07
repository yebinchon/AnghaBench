
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_rf_deactivate_cmd {unsigned long type; } ;
struct nci_dev {int dummy; } ;


 int NCI_OP_RF_DEACTIVATE_CMD ;
 int nci_send_cmd (struct nci_dev*,int ,int,struct nci_rf_deactivate_cmd*) ;

__attribute__((used)) static void nci_rf_deactivate_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_rf_deactivate_cmd cmd;

 cmd.type = opt;

 nci_send_cmd(ndev, NCI_OP_RF_DEACTIVATE_CMD,
       sizeof(struct nci_rf_deactivate_cmd), &cmd);
}
