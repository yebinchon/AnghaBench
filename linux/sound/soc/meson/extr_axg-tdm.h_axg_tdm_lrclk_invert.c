
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;
 unsigned int SND_SOC_DAIFMT_I2S ;
 unsigned int SND_SOC_DAIFMT_IB_IF ;
 unsigned int SND_SOC_DAIFMT_NB_IF ;

__attribute__((used)) static inline bool axg_tdm_lrclk_invert(unsigned int fmt)
{
 return ((fmt & SND_SOC_DAIFMT_FORMAT_MASK) == SND_SOC_DAIFMT_I2S) ^
  !!(fmt & (SND_SOC_DAIFMT_IB_IF | SND_SOC_DAIFMT_NB_IF));
}
