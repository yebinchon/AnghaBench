
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; void* command_id; int dst; } ;
struct sst_param_sba_ssp_slot_map {int param_len; TYPE_1__ header; int tx_slot_map; int rx_slot_map; int ssp_index; void* param_id; } ;
struct sst_dsp_header {int dummy; } ;
struct sst_data {int dummy; } ;


 void* SBA_SET_SSP_SLOT_MAP ;
 int SSP_CODEC ;
 int SST_FILL_DEFAULT_DESTINATION (int ) ;
 int SST_FLAG_BLOCKED ;
 int SST_IPC_IA_SET_PARAMS ;
 int SST_TASK_SBA ;
 int memcpy (int ,int *,int) ;
 int sst_fill_and_send_cmd_unlocked (struct sst_data*,int ,int ,int ,int ,struct sst_param_sba_ssp_slot_map*,int) ;
 int * sst_ssp_rx_map ;
 int * sst_ssp_tx_map ;

__attribute__((used)) static int sst_send_slot_map(struct sst_data *drv)
{
 struct sst_param_sba_ssp_slot_map cmd;

 SST_FILL_DEFAULT_DESTINATION(cmd.header.dst);
 cmd.header.command_id = SBA_SET_SSP_SLOT_MAP;
 cmd.header.length = sizeof(struct sst_param_sba_ssp_slot_map)
    - sizeof(struct sst_dsp_header);

 cmd.param_id = SBA_SET_SSP_SLOT_MAP;
 cmd.param_len = sizeof(cmd.rx_slot_map) + sizeof(cmd.tx_slot_map)
     + sizeof(cmd.ssp_index);
 cmd.ssp_index = SSP_CODEC;

 memcpy(cmd.rx_slot_map, &sst_ssp_tx_map[0], sizeof(cmd.rx_slot_map));
 memcpy(cmd.tx_slot_map, &sst_ssp_rx_map[0], sizeof(cmd.tx_slot_map));

 return sst_fill_and_send_cmd_unlocked(drv, SST_IPC_IA_SET_PARAMS,
   SST_FLAG_BLOCKED, SST_TASK_SBA, 0, &cmd,
         sizeof(cmd.header) + cmd.header.length);
}
