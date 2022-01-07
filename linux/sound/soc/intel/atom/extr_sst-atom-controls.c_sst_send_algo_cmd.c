
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_data {int dummy; } ;
struct sst_cmd_set_params {int params; int command_id; int dst; } ;
struct sst_algo_control {int max; int task_id; int params; int cmd_id; int module_id; int pipe_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SST_FILL_DESTINATION (int,int ,int ,int ) ;
 int SST_FLAG_BLOCKED ;
 int SST_IPC_IA_SET_PARAMS ;
 int kfree (struct sst_cmd_set_params*) ;
 struct sst_cmd_set_params* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int sst_fill_and_send_cmd_unlocked (struct sst_data*,int ,int ,int ,int ,struct sst_cmd_set_params*,int) ;

__attribute__((used)) static int sst_send_algo_cmd(struct sst_data *drv,
         struct sst_algo_control *bc)
{
 int len, ret = 0;
 struct sst_cmd_set_params *cmd;


 len = sizeof(cmd->dst) + sizeof(cmd->command_id) + bc->max;

 cmd = kzalloc(len, GFP_KERNEL);
 if (cmd == ((void*)0))
  return -ENOMEM;

 SST_FILL_DESTINATION(2, cmd->dst, bc->pipe_id, bc->module_id);
 cmd->command_id = bc->cmd_id;
 memcpy(cmd->params, bc->params, bc->max);

 ret = sst_fill_and_send_cmd_unlocked(drv, SST_IPC_IA_SET_PARAMS,
    SST_FLAG_BLOCKED, bc->task_id, 0, cmd, len);
 kfree(cmd);
 return ret;
}
