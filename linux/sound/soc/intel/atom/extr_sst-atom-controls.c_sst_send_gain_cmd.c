
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct sst_gain_value {int ramp_duration; void* r_gain; void* l_gain; scalar_t__ mute; } ;
struct sst_dsp_header {int dummy; } ;
struct sst_data {TYPE_1__* pdev; } ;
struct TYPE_6__ {int length; int dst; int command_id; } ;
struct sst_cmd_set_gain_dual {int gain_cell_num; TYPE_3__ header; TYPE_2__* cell_gains; } ;
struct TYPE_5__ {int gain_time_constant; int dest; void* cell_gain_right; void* cell_gain_left; } ;
struct TYPE_4__ {int dev; } ;


 int MMX_SET_GAIN ;
 int SST_FILL_DEFAULT_DESTINATION (int ) ;
 int SST_FILL_DESTINATION (int,int ,int ,int ) ;
 int SST_FLAG_BLOCKED ;
 void* SST_GAIN_MIN_VALUE ;
 int SST_IPC_IA_SET_PARAMS ;
 int dev_dbg (int *,char*) ;
 int sst_fill_and_send_cmd_unlocked (struct sst_data*,int ,int ,int ,int ,struct sst_cmd_set_gain_dual*,int) ;

__attribute__((used)) static int sst_send_gain_cmd(struct sst_data *drv, struct sst_gain_value *gv,
         u16 task_id, u16 loc_id, u16 module_id, int mute)
{
 struct sst_cmd_set_gain_dual cmd;

 dev_dbg(&drv->pdev->dev, "Enter\n");

 cmd.header.command_id = MMX_SET_GAIN;
 SST_FILL_DEFAULT_DESTINATION(cmd.header.dst);
 cmd.gain_cell_num = 1;

 if (mute || gv->mute) {
  cmd.cell_gains[0].cell_gain_left = SST_GAIN_MIN_VALUE;
  cmd.cell_gains[0].cell_gain_right = SST_GAIN_MIN_VALUE;
 } else {
  cmd.cell_gains[0].cell_gain_left = gv->l_gain;
  cmd.cell_gains[0].cell_gain_right = gv->r_gain;
 }

 SST_FILL_DESTINATION(2, cmd.cell_gains[0].dest,
        loc_id, module_id);
 cmd.cell_gains[0].gain_time_constant = gv->ramp_duration;

 cmd.header.length = sizeof(struct sst_cmd_set_gain_dual)
    - sizeof(struct sst_dsp_header);


 return sst_fill_and_send_cmd_unlocked(drv, SST_IPC_IA_SET_PARAMS,
    SST_FLAG_BLOCKED, task_id, 0, &cmd,
         sizeof(cmd.header) + cmd.header.length);
}
