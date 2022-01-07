
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int simtec_audio_core_probe (struct platform_device*,int *) ;
 int snd_soc_machine_simtec_aic23 ;

__attribute__((used)) static int simtec_audio_tlv320aic23_probe(struct platform_device *pd)
{
 return simtec_audio_core_probe(pd, &snd_soc_machine_simtec_aic23);
}
