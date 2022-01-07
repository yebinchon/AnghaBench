
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SND_SOC_DAIFMT_IB_IF ;
 unsigned int SND_SOC_DAIFMT_IB_NF ;

__attribute__((used)) static inline bool axg_tdm_sclk_invert(unsigned int fmt)
{
 return fmt & (SND_SOC_DAIFMT_IB_IF | SND_SOC_DAIFMT_IB_NF);
}
