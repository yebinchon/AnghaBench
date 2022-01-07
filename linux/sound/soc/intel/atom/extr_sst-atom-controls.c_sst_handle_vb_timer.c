
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sst_data {int lock; } ;
struct TYPE_4__ {scalar_t__ length; int dst; int command_id; } ;
struct sst_cmd_generic {TYPE_1__ header; } ;
struct snd_soc_dai {int dev; } ;
struct TYPE_6__ {int dev; TYPE_2__* ops; } ;
struct TYPE_5__ {int (* power ) (int ,int) ;} ;


 int SBA_IDLE ;
 int SBA_VB_START ;
 int SST_FILL_DEFAULT_DESTINATION (int ) ;
 int SST_FLAG_BLOCKED ;
 int SST_IPC_IA_CMD ;
 int SST_TASK_SBA ;
 int dev_dbg (int ,char*,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct sst_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 TYPE_3__* sst ;
 int sst_fill_and_send_cmd_unlocked (struct sst_data*,int ,int ,int ,int ,struct sst_cmd_generic*,scalar_t__) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

int sst_handle_vb_timer(struct snd_soc_dai *dai, bool enable)
{
 int ret = 0;
 struct sst_cmd_generic cmd;
 struct sst_data *drv = snd_soc_dai_get_drvdata(dai);
 static int timer_usage;

 if (enable)
  cmd.header.command_id = SBA_VB_START;
 else
  cmd.header.command_id = SBA_IDLE;
 dev_dbg(dai->dev, "enable=%u, usage=%d\n", enable, timer_usage);

 SST_FILL_DEFAULT_DESTINATION(cmd.header.dst);
 cmd.header.length = 0;

 if (enable) {
  ret = sst->ops->power(sst->dev, 1);
  if (ret < 0)
   return ret;
 }

 mutex_lock(&drv->lock);
 if (enable)
  timer_usage++;
 else
  timer_usage--;





 if ((enable && (timer_usage == 1)) ||
     (!enable && (timer_usage == 0))) {
  ret = sst_fill_and_send_cmd_unlocked(drv, SST_IPC_IA_CMD,
    SST_FLAG_BLOCKED, SST_TASK_SBA, 0, &cmd,
    sizeof(cmd.header) + cmd.header.length);
  if (ret && enable) {
   timer_usage--;
   enable = 0;
  }
 }
 mutex_unlock(&drv->lock);

 if (!enable)
  sst->ops->power(sst->dev, 0);
 return ret;
}
