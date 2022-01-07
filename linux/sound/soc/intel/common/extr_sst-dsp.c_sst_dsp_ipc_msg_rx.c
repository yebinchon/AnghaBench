
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sst_dsp {int dummy; } ;


 int SST_IPCX ;
 int sst_dsp_shim_read_unlocked (struct sst_dsp*,int ) ;
 int trace_sst_ipc_msg_rx (int ) ;

u32 sst_dsp_ipc_msg_rx(struct sst_dsp *dsp)
{
 u32 msg;

 msg = sst_dsp_shim_read_unlocked(dsp, SST_IPCX);
 trace_sst_ipc_msg_rx(msg);

 return msg;
}
