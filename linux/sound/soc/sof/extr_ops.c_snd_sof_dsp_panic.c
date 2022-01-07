
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct snd_sof_dev {scalar_t__ dsp_oops_offset; int dev; } ;


 int SOF_DBG_MBOX ;
 int SOF_DBG_REGS ;
 int dev_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int dev_err (int ,char*) ;
 int snd_sof_dsp_dbg_dump (struct snd_sof_dev*,int) ;
 int snd_sof_trace_notify_for_error (struct snd_sof_dev*) ;

void snd_sof_dsp_panic(struct snd_sof_dev *sdev, u32 offset)
{
 dev_err(sdev->dev, "error : DSP panic!\n");






 if (!sdev->dsp_oops_offset)
  sdev->dsp_oops_offset = offset;
 else
  dev_dbg(sdev->dev, "panic: dsp_oops_offset %zu offset %d\n",
   sdev->dsp_oops_offset, offset);

 snd_sof_dsp_dbg_dump(sdev, SOF_DBG_REGS | SOF_DBG_MBOX);
 snd_sof_trace_notify_for_error(sdev);
}
