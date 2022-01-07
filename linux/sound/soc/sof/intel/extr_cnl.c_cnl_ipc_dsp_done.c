
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dummy; } ;


 int CNL_DSP_REG_HIPCCTL ;
 int CNL_DSP_REG_HIPCCTL_DONE ;
 int CNL_DSP_REG_HIPCIDA ;
 int CNL_DSP_REG_HIPCIDA_DONE ;
 int HDA_DSP_BAR ;
 int snd_sof_dsp_update_bits (struct snd_sof_dev*,int ,int ,int ,int ) ;
 int snd_sof_dsp_update_bits_forced (struct snd_sof_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static void cnl_ipc_dsp_done(struct snd_sof_dev *sdev)
{




 snd_sof_dsp_update_bits_forced(sdev, HDA_DSP_BAR,
           CNL_DSP_REG_HIPCIDA,
           CNL_DSP_REG_HIPCIDA_DONE,
           CNL_DSP_REG_HIPCIDA_DONE);


 snd_sof_dsp_update_bits(sdev, HDA_DSP_BAR,
    CNL_DSP_REG_HIPCCTL,
    CNL_DSP_REG_HIPCCTL_DONE,
    CNL_DSP_REG_HIPCCTL_DONE);
}
