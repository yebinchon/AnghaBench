
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int dummy; } ;


 int SST_IPCX ;
 int SST_IPCX_BUSY ;
 int sst_dsp_shim_write_unlocked (struct sst_dsp*,int ,int) ;
 int trace_sst_ipc_msg_tx (int) ;

void sst_dsp_ipc_msg_tx(struct sst_dsp *dsp, u32 msg)
{
 sst_dsp_shim_write_unlocked(dsp, SST_IPCX, msg | SST_IPCX_BUSY);
 trace_sst_ipc_msg_tx(msg);
}
