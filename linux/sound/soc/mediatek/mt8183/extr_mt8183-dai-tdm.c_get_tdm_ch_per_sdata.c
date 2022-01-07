
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TDM_OUT_TDM ;
 unsigned int get_tdm_ch_fixup (unsigned int) ;

__attribute__((used)) static unsigned int get_tdm_ch_per_sdata(unsigned int mode,
      unsigned int channels)
{
 if (mode == TDM_OUT_TDM)
  return get_tdm_ch_fixup(channels);
 else
  return 2;
}
