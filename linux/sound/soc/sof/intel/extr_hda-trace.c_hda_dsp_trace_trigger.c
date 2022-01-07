
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sof_intel_hda_dev {int dtrace_stream; } ;
struct snd_sof_dev {TYPE_1__* pdata; } ;
struct TYPE_2__ {struct sof_intel_hda_dev* hw_pdata; } ;


 int hda_dsp_stream_trigger (struct snd_sof_dev*,int ,int) ;

int hda_dsp_trace_trigger(struct snd_sof_dev *sdev, int cmd)
{
 struct sof_intel_hda_dev *hda = sdev->pdata->hw_pdata;

 return hda_dsp_stream_trigger(sdev, hda->dtrace_stream, cmd);
}
