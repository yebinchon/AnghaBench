
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_driver {int symmetric_rates; int symmetric_channels; int symmetric_samplebits; } ;


 unsigned int SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_CHANNELS ;
 unsigned int SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_RATES ;
 unsigned int SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_SAMPLEBITS ;

__attribute__((used)) static void set_dai_flags(struct snd_soc_dai_driver *dai_drv,
     unsigned int flag_mask, unsigned int flags)
{
 if (flag_mask & SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_RATES)
  dai_drv->symmetric_rates =
   flags & SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_RATES ? 1 : 0;

 if (flag_mask & SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_CHANNELS)
  dai_drv->symmetric_channels =
   flags & SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_CHANNELS ?
   1 : 0;

 if (flag_mask & SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_SAMPLEBITS)
  dai_drv->symmetric_samplebits =
   flags & SND_SOC_TPLG_DAI_FLGBIT_SYMMETRIC_SAMPLEBITS ?
   1 : 0;
}
