
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int CNL_DSP_REG_HIPCTDA ;
 int CNL_DSP_REG_HIPCTDA_DONE ;
 int CNL_DSP_REG_HIPCTDR ;
 int CNL_DSP_REG_HIPCTDR_BUSY ;
 int HDA_DSP_BAR ;
 int snd_sof_dsp_update_bits_forced (struct snd_sof_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static void cnl_ipc_host_done(struct snd_sof_dev *sdev)
{




 snd_sof_dsp_update_bits_forced(sdev, HDA_DSP_BAR,
           CNL_DSP_REG_HIPCTDR,
           CNL_DSP_REG_HIPCTDR_BUSY,
           CNL_DSP_REG_HIPCTDR_BUSY);




 snd_sof_dsp_update_bits_forced(sdev, HDA_DSP_BAR,
           CNL_DSP_REG_HIPCTDA,
           CNL_DSP_REG_HIPCTDA_DONE,
           CNL_DSP_REG_HIPCTDA_DONE);
}
