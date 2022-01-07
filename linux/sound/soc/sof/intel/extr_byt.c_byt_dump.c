
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sof_ipc_panic_info {int dummy; } ;
struct sof_ipc_dsp_oops_xtensa {int dummy; } ;
struct snd_sof_dev {int dummy; } ;


 int BYT_DSP_BAR ;
 int BYT_STACK_DUMP_SIZE ;
 int SHIM_IPCD ;
 int SHIM_IPCX ;
 int byt_get_registers (struct snd_sof_dev*,struct sof_ipc_dsp_oops_xtensa*,struct sof_ipc_panic_info*,int *,int) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;
 int snd_sof_get_status (struct snd_sof_dev*,int ,int ,struct sof_ipc_dsp_oops_xtensa*,struct sof_ipc_panic_info*,int *,int) ;

__attribute__((used)) static void byt_dump(struct snd_sof_dev *sdev, u32 flags)
{
 struct sof_ipc_dsp_oops_xtensa xoops;
 struct sof_ipc_panic_info panic_info;
 u32 stack[BYT_STACK_DUMP_SIZE];
 u32 status, panic;


 status = snd_sof_dsp_read(sdev, BYT_DSP_BAR, SHIM_IPCD);
 panic = snd_sof_dsp_read(sdev, BYT_DSP_BAR, SHIM_IPCX);
 byt_get_registers(sdev, &xoops, &panic_info, stack,
     BYT_STACK_DUMP_SIZE);
 snd_sof_get_status(sdev, status, panic, &xoops, &panic_info, stack,
      BYT_STACK_DUMP_SIZE);
}
