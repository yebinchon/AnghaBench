
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {scalar_t__ id; } ;
struct nci_dev {void* cur_dest_type; TYPE_1__ cur_params; } ;
struct nci_core_conn_create_cmd {TYPE_1__* params; void* number_destination_params; void* destination_type; } ;
struct dest_spec_params {int dummy; } ;
struct core_conn_create_dest_spec_params {scalar_t__ length; struct core_conn_create_dest_spec_params* value; } ;
struct core_conn_create_data {size_t length; struct nci_core_conn_create_cmd* cmd; } ;


 size_t DEST_SPEC_PARAMS_ID_INDEX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NCI_CMD_TIMEOUT ;
 int __nci_request (struct nci_dev*,int ,unsigned long,int ) ;
 int kfree (struct nci_core_conn_create_cmd*) ;
 struct nci_core_conn_create_cmd* kzalloc (size_t,int ) ;
 int memcpy (TYPE_1__*,struct core_conn_create_dest_spec_params*,int) ;
 int msecs_to_jiffies (int ) ;
 int nci_core_conn_create_req ;

int nci_core_conn_create(struct nci_dev *ndev, u8 destination_type,
    u8 number_destination_params,
    size_t params_len,
    struct core_conn_create_dest_spec_params *params)
{
 int r;
 struct nci_core_conn_create_cmd *cmd;
 struct core_conn_create_data data;

 data.length = params_len + sizeof(struct nci_core_conn_create_cmd);
 cmd = kzalloc(data.length, GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 cmd->destination_type = destination_type;
 cmd->number_destination_params = number_destination_params;

 data.cmd = cmd;

 if (params) {
  memcpy(cmd->params, params, params_len);
  if (params->length > 0)
   memcpy(&ndev->cur_params,
          &params->value[DEST_SPEC_PARAMS_ID_INDEX],
          sizeof(struct dest_spec_params));
  else
   ndev->cur_params.id = 0;
 } else {
  ndev->cur_params.id = 0;
 }
 ndev->cur_dest_type = destination_type;

 r = __nci_request(ndev, nci_core_conn_create_req, (unsigned long)&data,
     msecs_to_jiffies(NCI_CMD_TIMEOUT));
 kfree(cmd);
 return r;
}
