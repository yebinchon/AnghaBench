
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int SND_SOC_DAIFMT_CBM_CFM ;
 int lochnagar_sc_check_fmt (struct snd_soc_dai*,unsigned int,int ) ;

__attribute__((used)) static int lochnagar_sc_set_usb_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 return lochnagar_sc_check_fmt(dai, fmt, SND_SOC_DAIFMT_CBM_CFM);
}
