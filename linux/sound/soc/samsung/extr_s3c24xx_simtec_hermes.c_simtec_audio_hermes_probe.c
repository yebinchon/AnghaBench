
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_info (int *,char*) ;
 int simtec_audio_core_probe (struct platform_device*,int *) ;
 int snd_soc_machine_simtec_aic33 ;

__attribute__((used)) static int simtec_audio_hermes_probe(struct platform_device *pd)
{
 dev_info(&pd->dev, "probing....\n");
 return simtec_audio_core_probe(pd, &snd_soc_machine_simtec_aic33);
}
