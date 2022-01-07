
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sof_ipc_panic_info {int dummy; } ;
struct sof_ipc_dsp_oops_xtensa {int dummy; } ;
struct snd_sof_dev {int dev; scalar_t__ boot_complete; } ;


 scalar_t__ HDA_ADSP_ERROR_CODE_SKL ;
 int HDA_DSP_BAR ;
 int HDA_DSP_STACK_DUMP_SIZE ;
 int dev_err (int ,char*,int ,int ) ;
 int hda_dsp_get_registers (struct snd_sof_dev*,struct sof_ipc_dsp_oops_xtensa*,struct sof_ipc_panic_info*,int *,int) ;
 int hda_dsp_get_status_skl (struct snd_sof_dev*) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,scalar_t__) ;
 int snd_sof_get_status (struct snd_sof_dev*,int ,int ,struct sof_ipc_dsp_oops_xtensa*,struct sof_ipc_panic_info*,int *,int) ;

void hda_dsp_dump_skl(struct snd_sof_dev *sdev, u32 flags)
{
 struct sof_ipc_dsp_oops_xtensa xoops;
 struct sof_ipc_panic_info panic_info;
 u32 stack[HDA_DSP_STACK_DUMP_SIZE];
 u32 status, panic;


 hda_dsp_get_status_skl(sdev);


 status = snd_sof_dsp_read(sdev, HDA_DSP_BAR,
      HDA_ADSP_ERROR_CODE_SKL);


 panic = snd_sof_dsp_read(sdev, HDA_DSP_BAR,
     HDA_ADSP_ERROR_CODE_SKL + 0x4);

 if (sdev->boot_complete) {
  hda_dsp_get_registers(sdev, &xoops, &panic_info, stack,
          HDA_DSP_STACK_DUMP_SIZE);
  snd_sof_get_status(sdev, status, panic, &xoops, &panic_info,
       stack, HDA_DSP_STACK_DUMP_SIZE);
 } else {
  dev_err(sdev->dev, "error: status = 0x%8.8x panic = 0x%8.8x\n",
   status, panic);
  hda_dsp_get_status_skl(sdev);
 }
}
