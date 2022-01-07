
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_nfcee_discover_cmd {unsigned long discovery_action; } ;
struct nci_dev {int dummy; } ;
typedef unsigned long __u8 ;


 int NCI_OP_NFCEE_DISCOVER_CMD ;
 int nci_send_cmd (struct nci_dev*,int ,int,struct nci_nfcee_discover_cmd*) ;

__attribute__((used)) static void nci_nfcee_discover_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_nfcee_discover_cmd cmd;
 __u8 action = opt;

 cmd.discovery_action = action;

 nci_send_cmd(ndev, NCI_OP_NFCEE_DISCOVER_CMD, 1, &cmd);
}
