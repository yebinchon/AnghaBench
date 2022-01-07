
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {char* platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct TYPE_12__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_6__ dev; } ;
struct cht_mc_private {int dummy; } ;
struct TYPE_11__ {TYPE_6__* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (TYPE_6__*,char*,int) ;
 struct cht_mc_private* devm_kzalloc (TYPE_6__*,int,int ) ;
 int devm_snd_soc_register_card (TYPE_6__*,TYPE_2__*) ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 TYPE_2__ snd_soc_card_cht ;
 int snd_soc_card_set_drvdata (TYPE_2__*,struct cht_mc_private*) ;
 int snd_soc_fixup_dai_links_platform_name (TYPE_2__*,char const*) ;

__attribute__((used)) static int snd_cht_mc_probe(struct platform_device *pdev)
{
 struct cht_mc_private *drv;
 struct snd_soc_acpi_mach *mach;
 const char *platform_name;
 int ret_val;

 drv = devm_kzalloc(&pdev->dev, sizeof(*drv), GFP_KERNEL);
 if (!drv)
  return -ENOMEM;
 snd_soc_card_set_drvdata(&snd_soc_card_cht, drv);


 snd_soc_card_cht.dev = &pdev->dev;
 mach = (&pdev->dev)->platform_data;
 platform_name = mach->mach_params.platform;

 ret_val = snd_soc_fixup_dai_links_platform_name(&snd_soc_card_cht,
       platform_name);
 if (ret_val)
  return ret_val;


 ret_val = devm_snd_soc_register_card(&pdev->dev, &snd_soc_card_cht);
 if (ret_val) {
  dev_err(&pdev->dev,
   "snd_soc_register_card failed %d\n", ret_val);
  return ret_val;
 }
 platform_set_drvdata(pdev, &snd_soc_card_cht);

 return ret_val;
}
