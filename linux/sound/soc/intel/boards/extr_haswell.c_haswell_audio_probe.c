
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct TYPE_8__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_4__ dev; } ;
struct TYPE_7__ {TYPE_4__* dev; } ;


 int devm_snd_soc_register_card (TYPE_4__*,TYPE_2__*) ;
 TYPE_2__ haswell_rt5640 ;
 int snd_soc_fixup_dai_links_platform_name (TYPE_2__*,int ) ;

__attribute__((used)) static int haswell_audio_probe(struct platform_device *pdev)
{
 struct snd_soc_acpi_mach *mach;
 int ret;

 haswell_rt5640.dev = &pdev->dev;


 mach = (&pdev->dev)->platform_data;
 ret = snd_soc_fixup_dai_links_platform_name(&haswell_rt5640,
          mach->mach_params.platform);
 if (ret)
  return ret;

 return devm_snd_soc_register_card(&pdev->dev, &haswell_rt5640);
}
