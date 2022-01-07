
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sst_dsp_header {int dummy; } ;
struct TYPE_3__ {int length; int command_id; int dst; } ;
struct TYPE_4__ {int selection; TYPE_1__ header; int switch_state; } ;
struct sst_data {TYPE_2__ ssp_cmd; } ;
struct sst_cmd_sba_hw_set_ssp {int dummy; } ;
struct snd_soc_dai {int dev; } ;


 int SBA_HW_SET_SSP ;
 int SSP_CODEC ;
 int SSP_MODEM ;
 int SST_FILL_DEFAULT_DESTINATION (int ) ;
 int SST_FLAG_BLOCKED ;
 int SST_IPC_IA_CMD ;
 int SST_SWITCH_OFF ;
 int SST_SWITCH_ON ;
 int SST_TASK_SBA ;
 int dev_dbg (int ,char*,...) ;
 struct sst_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;
 int sst_fill_and_send_cmd (struct sst_data*,int ,int ,int ,int ,TYPE_2__*,int) ;
 scalar_t__ strcmp (char const*,char*) ;

int send_ssp_cmd(struct snd_soc_dai *dai, const char *id, bool enable)
{
 struct sst_data *drv = snd_soc_dai_get_drvdata(dai);
 int ssp_id;

 dev_dbg(dai->dev, "Enter: enable=%d port_name=%s\n", enable, id);

 if (strcmp(id, "ssp0-port") == 0)
  ssp_id = SSP_MODEM;
 else if (strcmp(id, "ssp2-port") == 0)
  ssp_id = SSP_CODEC;
 else {
  dev_dbg(dai->dev, "port %s is not supported\n", id);
  return -1;
 }

 SST_FILL_DEFAULT_DESTINATION(drv->ssp_cmd.header.dst);
 drv->ssp_cmd.header.command_id = SBA_HW_SET_SSP;
 drv->ssp_cmd.header.length = sizeof(struct sst_cmd_sba_hw_set_ssp)
    - sizeof(struct sst_dsp_header);

 drv->ssp_cmd.selection = ssp_id;
 dev_dbg(dai->dev, "ssp_id: %u\n", ssp_id);

 if (enable)
  drv->ssp_cmd.switch_state = SST_SWITCH_ON;
 else
  drv->ssp_cmd.switch_state = SST_SWITCH_OFF;

 return sst_fill_and_send_cmd(drv, SST_IPC_IA_CMD, SST_FLAG_BLOCKED,
    SST_TASK_SBA, 0, &drv->ssp_cmd,
    sizeof(drv->ssp_cmd.header) + drv->ssp_cmd.header.length);
}
