
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nci_set_config_param {scalar_t__ len; int val; int id; } ;
struct nci_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int val; int id; } ;
struct nci_core_set_config_cmd {int num_params; TYPE_1__ param; } ;


 int BUG_ON (int) ;
 scalar_t__ NCI_MAX_PARAM_LEN ;
 int NCI_OP_CORE_SET_CONFIG_CMD ;
 int memcpy (int ,int ,scalar_t__) ;
 int nci_send_cmd (struct nci_dev*,int ,scalar_t__,struct nci_core_set_config_cmd*) ;

__attribute__((used)) static void nci_set_config_req(struct nci_dev *ndev, unsigned long opt)
{
 struct nci_set_config_param *param = (struct nci_set_config_param *)opt;
 struct nci_core_set_config_cmd cmd;

 BUG_ON(param->len > NCI_MAX_PARAM_LEN);

 cmd.num_params = 1;
 cmd.param.id = param->id;
 cmd.param.len = param->len;
 memcpy(cmd.param.val, param->val, param->len);

 nci_send_cmd(ndev, NCI_OP_CORE_SET_CONFIG_CMD, (3 + param->len), &cmd);
}
