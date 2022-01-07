
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sst_ids {int task_id; int location_id; } ;
struct sst_dsp_header {int dummy; } ;
struct sst_data {int dummy; } ;
struct TYPE_2__ {int length; int command_id; int dst; } ;
struct sst_cmd_set_media_path {TYPE_1__ header; int switch_state; } ;
struct snd_soc_dapm_widget {int name; struct sst_ids* priv; int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int MMX_SET_MEDIA_PATH ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int SST_DEFAULT_MODULE_ID ;
 int SST_FILL_DESTINATION (int,int ,int ,int ) ;
 int SST_FLAG_BLOCKED ;
 int SST_IPC_IA_CMD ;
 int SST_PATH_OFF ;
 int SST_PATH_ON ;
 int dev_dbg (int ,char*,int ,...) ;
 struct sst_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int sst_fill_and_send_cmd (struct sst_data*,int ,int ,int ,int ,struct sst_cmd_set_media_path*,int) ;
 int sst_send_pipe_module_params (struct snd_soc_dapm_widget*,struct snd_kcontrol*) ;

__attribute__((used)) static int sst_set_media_path(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *k, int event)
{
 int ret = 0;
 struct sst_cmd_set_media_path cmd;
 struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
 struct sst_data *drv = snd_soc_component_get_drvdata(c);
 struct sst_ids *ids = w->priv;

 dev_dbg(c->dev, "widget=%s\n", w->name);
 dev_dbg(c->dev, "task=%u, location=%#x\n",
    ids->task_id, ids->location_id);

 if (SND_SOC_DAPM_EVENT_ON(event))
  cmd.switch_state = SST_PATH_ON;
 else
  cmd.switch_state = SST_PATH_OFF;

 SST_FILL_DESTINATION(2, cmd.header.dst,
        ids->location_id, SST_DEFAULT_MODULE_ID);


 cmd.header.command_id = MMX_SET_MEDIA_PATH;
 cmd.header.length = sizeof(struct sst_cmd_set_media_path)
    - sizeof(struct sst_dsp_header);

 ret = sst_fill_and_send_cmd(drv, SST_IPC_IA_CMD, SST_FLAG_BLOCKED,
         ids->task_id, 0, &cmd,
         sizeof(cmd.header) + cmd.header.length);
 if (ret)
  return ret;

 if (SND_SOC_DAPM_EVENT_ON(event))
  ret = sst_send_pipe_module_params(w, k);
 return ret;
}
