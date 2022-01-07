
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sst_ids {int format; int location_id; } ;
struct sst_dsp_header {int dummy; } ;
struct sst_data {int dummy; } ;
struct TYPE_8__ {int length; int command_id; int dst; } ;
struct TYPE_5__ {int rate; int s_length; int format; } ;
struct TYPE_6__ {TYPE_1__ cfg; } ;
struct TYPE_7__ {TYPE_2__ part; } ;
struct sst_cmd_sba_set_media_loop_map {TYPE_4__ header; scalar_t__ map; TYPE_3__ param; int switch_state; } ;
struct snd_soc_dapm_widget {int name; struct sst_ids* priv; int dapm; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {int dummy; } ;


 int SBA_SET_MEDIA_LOOP_MAP ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int SST_DEFAULT_MODULE_ID ;
 int SST_FILL_DESTINATION (int,int ,int ,int ) ;
 int SST_FLAG_BLOCKED ;
 int SST_IPC_IA_CMD ;
 int SST_SWITCH_OFF ;
 int SST_SWITCH_ON ;
 int SST_TASK_SBA ;
 int dev_dbg (int ,char*,int ) ;
 struct sst_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int sst_fill_and_send_cmd (struct sst_data*,int ,int ,int ,int ,struct sst_cmd_sba_set_media_loop_map*,int) ;
 int sst_send_pipe_module_params (struct snd_soc_dapm_widget*,struct snd_kcontrol*) ;

__attribute__((used)) static int sst_set_media_loop(struct snd_soc_dapm_widget *w,
   struct snd_kcontrol *k, int event)
{
 int ret = 0;
 struct sst_cmd_sba_set_media_loop_map cmd;
 struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
 struct sst_data *drv = snd_soc_component_get_drvdata(c);
 struct sst_ids *ids = w->priv;

 dev_dbg(c->dev, "Enter:widget=%s\n", w->name);
 if (SND_SOC_DAPM_EVENT_ON(event))
  cmd.switch_state = SST_SWITCH_ON;
 else
  cmd.switch_state = SST_SWITCH_OFF;

 SST_FILL_DESTINATION(2, cmd.header.dst,
        ids->location_id, SST_DEFAULT_MODULE_ID);

 cmd.header.command_id = SBA_SET_MEDIA_LOOP_MAP;
 cmd.header.length = sizeof(struct sst_cmd_sba_set_media_loop_map)
     - sizeof(struct sst_dsp_header);
 cmd.param.part.cfg.rate = 2;

 cmd.param.part.cfg.format = ids->format;
 cmd.param.part.cfg.s_length = 1;
 cmd.map = 0;

 ret = sst_fill_and_send_cmd(drv, SST_IPC_IA_CMD, SST_FLAG_BLOCKED,
         SST_TASK_SBA, 0, &cmd,
         sizeof(cmd.header) + cmd.header.length);
 if (ret)
  return ret;

 if (SND_SOC_DAPM_EVENT_ON(event))
  ret = sst_send_pipe_module_params(w, k);
 return ret;
}
