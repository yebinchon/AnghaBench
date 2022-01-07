
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_dev {int dev; } ;


 int HDA_DSP_ADSPCS_CPA_MASK (unsigned int) ;
 int HDA_DSP_ADSPCS_CRST_MASK (unsigned int) ;
 int HDA_DSP_ADSPCS_CSTALL_MASK (unsigned int) ;
 int HDA_DSP_ADSPCS_SPA_MASK (unsigned int) ;
 int HDA_DSP_BAR ;
 int HDA_DSP_REG_ADSPCS ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 int snd_sof_dsp_read (struct snd_sof_dev*,int ,int ) ;

bool hda_dsp_core_is_enabled(struct snd_sof_dev *sdev,
        unsigned int core_mask)
{
 int val;
 bool is_enable;

 val = snd_sof_dsp_read(sdev, HDA_DSP_BAR, HDA_DSP_REG_ADSPCS);

 is_enable = ((val & HDA_DSP_ADSPCS_CPA_MASK(core_mask)) &&
   (val & HDA_DSP_ADSPCS_SPA_MASK(core_mask)) &&
   !(val & HDA_DSP_ADSPCS_CRST_MASK(core_mask)) &&
   !(val & HDA_DSP_ADSPCS_CSTALL_MASK(core_mask)));

 dev_dbg(sdev->dev, "DSP core(s) enabled? %d : core_mask %x\n",
  is_enable, core_mask);

 return is_enable;
}
