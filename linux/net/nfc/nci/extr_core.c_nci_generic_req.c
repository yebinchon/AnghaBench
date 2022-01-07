
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_dev {int dummy; } ;
struct nci_cmd_param {int payload; int len; int opcode; } ;


 int nci_send_cmd (struct nci_dev*,int ,int ,int ) ;

__attribute__((used)) static void nci_generic_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_cmd_param *param =
  (struct nci_cmd_param *)opt;

 nci_send_cmd(ndev, param->opcode, param->len, param->payload);
}
