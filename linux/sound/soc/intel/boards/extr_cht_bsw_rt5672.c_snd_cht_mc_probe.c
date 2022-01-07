
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct TYPE_16__ {char* platform; } ;
struct snd_soc_acpi_mach {TYPE_2__ mach_params; int id; } ;
struct TYPE_18__ {struct snd_soc_acpi_mach* platform_data; } ;
struct platform_device {TYPE_7__ dev; } ;
struct cht_mc_private {int mclk; int codec_name; } ;
struct acpi_device {int dev; } ;
struct TYPE_17__ {TYPE_7__* dev; } ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {TYPE_1__* codecs; } ;


 int ARRAY_SIZE (TYPE_12__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RT5672_I2C_DEFAULT ;
 struct acpi_device* acpi_dev_get_first_match_dev (int ,int *,int) ;
 char* acpi_dev_name (struct acpi_device*) ;
 TYPE_12__* cht_dailink ;
 int dev_err (TYPE_7__*,char*,int) ;
 int devm_clk_get (TYPE_7__*,char*) ;
 struct cht_mc_private* devm_kzalloc (TYPE_7__*,int,int ) ;
 int devm_snd_soc_register_card (TYPE_7__*,TYPE_3__*) ;
 int platform_set_drvdata (struct platform_device*,TYPE_3__*) ;
 int put_device (int *) ;
 TYPE_3__ snd_soc_card_cht ;
 int snd_soc_card_set_drvdata (TYPE_3__*,struct cht_mc_private*) ;
 int snd_soc_fixup_dai_links_platform_name (TYPE_3__*,char const*) ;
 int snprintf (int ,int,char*,char*) ;
 int strcmp (int ,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int snd_cht_mc_probe(struct platform_device *pdev)
{
 int ret_val = 0;
 struct cht_mc_private *drv;
 struct snd_soc_acpi_mach *mach = pdev->dev.platform_data;
 const char *platform_name;
 struct acpi_device *adev;
 int i;

 drv = devm_kzalloc(&pdev->dev, sizeof(*drv), GFP_KERNEL);
 if (!drv)
  return -ENOMEM;

 strcpy(drv->codec_name, RT5672_I2C_DEFAULT);


 adev = acpi_dev_get_first_match_dev(mach->id, ((void*)0), -1);
 if (adev) {
  snprintf(drv->codec_name, sizeof(drv->codec_name),
    "i2c-%s", acpi_dev_name(adev));
  put_device(&adev->dev);
  for (i = 0; i < ARRAY_SIZE(cht_dailink); i++) {
   if (!strcmp(cht_dailink[i].codecs->name,
        RT5672_I2C_DEFAULT)) {
    cht_dailink[i].codecs->name = drv->codec_name;
    break;
   }
  }
 }


 snd_soc_card_cht.dev = &pdev->dev;
 platform_name = mach->mach_params.platform;

 ret_val = snd_soc_fixup_dai_links_platform_name(&snd_soc_card_cht,
       platform_name);
 if (ret_val)
  return ret_val;

 drv->mclk = devm_clk_get(&pdev->dev, "pmc_plt_clk_3");
 if (IS_ERR(drv->mclk)) {
  dev_err(&pdev->dev,
   "Failed to get MCLK from pmc_plt_clk_3: %ld\n",
   PTR_ERR(drv->mclk));
  return PTR_ERR(drv->mclk);
 }
 snd_soc_card_set_drvdata(&snd_soc_card_cht, drv);


 ret_val = devm_snd_soc_register_card(&pdev->dev, &snd_soc_card_cht);
 if (ret_val) {
  dev_err(&pdev->dev,
   "snd_soc_register_card failed %d\n", ret_val);
  return ret_val;
 }
 platform_set_drvdata(pdev, &snd_soc_card_cht);
 return ret_val;
}
