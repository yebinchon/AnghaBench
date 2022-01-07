
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct nci_core_reset_cmd {int reset_type; } ;


 int NCI_OP_CORE_RESET_CMD ;
 int NCI_RESET_TYPE_RESET_CONFIG ;
 int nci_send_cmd (struct nci_dev*,int ,int,struct nci_core_reset_cmd*) ;

__attribute__((used)) static void nci_reset_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_core_reset_cmd cmd;

 cmd.reset_type = NCI_RESET_TYPE_RESET_CONFIG;
 nci_send_cmd(ndev, NCI_OP_CORE_RESET_CMD, 1, &cmd);
}
