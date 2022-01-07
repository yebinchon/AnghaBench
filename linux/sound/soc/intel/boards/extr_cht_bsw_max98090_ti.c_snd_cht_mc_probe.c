
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* platform; } ;
struct snd_soc_acpi_mach {TYPE_1__ mach_params; } ;
struct device {struct snd_soc_acpi_mach* platform_data; int parent; } ;
struct platform_device {struct device dev; } ;
struct dmi_system_id {scalar_t__ driver_data; } ;
struct cht_mc_private {unsigned long quirks; int mclk; int ts3a227e_present; } ;
struct TYPE_8__ {struct device* dev; scalar_t__ num_aux_devs; int * aux_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int QUIRK_PMC_PLT_CLK_0 ;
 int acpi_dev_found (char*) ;
 int acpi_max98090_gpios ;
 int cht_max98090_quirk_table ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*,...) ;
 int devm_acpi_dev_add_driver_gpios (int ,int ) ;
 int devm_clk_get (struct device*,char const*) ;
 struct cht_mc_private* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_card (struct device*,TYPE_2__*) ;
 struct dmi_system_id* dmi_first_match (int ) ;
 int platform_set_drvdata (struct platform_device*,TYPE_2__*) ;
 TYPE_2__ snd_soc_card_cht ;
 int snd_soc_card_set_drvdata (TYPE_2__*,struct cht_mc_private*) ;
 int snd_soc_fixup_dai_links_platform_name (TYPE_2__*,char const*) ;

__attribute__((used)) static int snd_cht_mc_probe(struct platform_device *pdev)
{
 const struct dmi_system_id *dmi_id;
 struct device *dev = &pdev->dev;
 int ret_val = 0;
 struct cht_mc_private *drv;
 const char *mclk_name;
 struct snd_soc_acpi_mach *mach;
 const char *platform_name;

 drv = devm_kzalloc(&pdev->dev, sizeof(*drv), GFP_KERNEL);
 if (!drv)
  return -ENOMEM;

 dmi_id = dmi_first_match(cht_max98090_quirk_table);
 if (dmi_id)
  drv->quirks = (unsigned long)dmi_id->driver_data;

 drv->ts3a227e_present = acpi_dev_found("104C227E");
 if (!drv->ts3a227e_present) {

  snd_soc_card_cht.aux_dev = ((void*)0);
  snd_soc_card_cht.num_aux_devs = 0;

  ret_val = devm_acpi_dev_add_driver_gpios(dev->parent,
        acpi_max98090_gpios);
  if (ret_val)
   dev_dbg(dev, "Unable to add GPIO mapping table\n");
 }


 snd_soc_card_cht.dev = &pdev->dev;
 mach = (&pdev->dev)->platform_data;
 platform_name = mach->mach_params.platform;

 ret_val = snd_soc_fixup_dai_links_platform_name(&snd_soc_card_cht,
       platform_name);
 if (ret_val)
  return ret_val;


 snd_soc_card_set_drvdata(&snd_soc_card_cht, drv);

 if (drv->quirks & QUIRK_PMC_PLT_CLK_0)
  mclk_name = "pmc_plt_clk_0";
 else
  mclk_name = "pmc_plt_clk_3";

 drv->mclk = devm_clk_get(&pdev->dev, mclk_name);
 if (IS_ERR(drv->mclk)) {
  dev_err(&pdev->dev,
   "Failed to get MCLK from %s: %ld\n",
   mclk_name, PTR_ERR(drv->mclk));
  return PTR_ERR(drv->mclk);
 }
 if (drv->quirks & QUIRK_PMC_PLT_CLK_0) {
  ret_val = clk_prepare_enable(drv->mclk);
  if (ret_val < 0) {
   dev_err(&pdev->dev, "MCLK enable error: %d\n", ret_val);
   return ret_val;
  }
 }

 ret_val = devm_snd_soc_register_card(&pdev->dev, &snd_soc_card_cht);
 if (ret_val) {
  dev_err(&pdev->dev,
   "snd_soc_register_card failed %d\n", ret_val);
  return ret_val;
 }
 platform_set_drvdata(pdev, &snd_soc_card_cht);
 return ret_val;
}
