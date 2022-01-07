
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct sti_sas_dev_data {int num_dapm_routes; int dapm_routes; int num_dapm_widgets; int dapm_widgets; int dac_ops; int regmap; } ;
struct TYPE_14__ {int regmap; int virt_regmap; } ;
struct TYPE_13__ {int regmap; } ;
struct sti_sas_data {struct sti_sas_dev_data* dev_data; TYPE_2__ dac; TYPE_1__ spdif; TYPE_5__* dev; } ;
struct TYPE_17__ {struct device_node* of_node; } ;
struct platform_device {TYPE_5__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct TYPE_16__ {int ops; } ;
struct TYPE_15__ {int num_dapm_routes; int dapm_routes; int num_dapm_widgets; int dapm_widgets; } ;


 int ARRAY_SIZE (TYPE_4__*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 size_t STI_SAS_DAI_ANALOG_OUT ;
 int dev_err (TYPE_5__*,char*) ;
 int dev_set_drvdata (TYPE_5__*,struct sti_sas_data*) ;
 struct sti_sas_data* devm_kzalloc (TYPE_5__*,int,int ) ;
 int devm_regmap_init (TYPE_5__*,int *,struct sti_sas_data*,int ) ;
 int devm_snd_soc_register_component (TYPE_5__*,TYPE_3__*,TYPE_4__*,int ) ;
 struct of_device_id* of_match_node (int ,struct device_node*) ;
 TYPE_4__* sti_sas_dai ;
 int sti_sas_dev_match ;
 TYPE_3__ sti_sas_driver ;
 int syscon_regmap_lookup_by_phandle (struct device_node*,char*) ;

__attribute__((used)) static int sti_sas_driver_probe(struct platform_device *pdev)
{
 struct device_node *pnode = pdev->dev.of_node;
 struct sti_sas_data *drvdata;
 const struct of_device_id *of_id;


 drvdata = devm_kzalloc(&pdev->dev, sizeof(struct sti_sas_data),
          GFP_KERNEL);
 if (!drvdata)
  return -ENOMEM;


 of_id = of_match_node(sti_sas_dev_match, pnode);
 if (!of_id->data) {
  dev_err(&pdev->dev, "data associated to device is missing\n");
  return -EINVAL;
 }

 drvdata->dev_data = (struct sti_sas_dev_data *)of_id->data;


 drvdata->dev = &pdev->dev;


 drvdata->dac.virt_regmap = devm_regmap_init(&pdev->dev, ((void*)0), drvdata,
          drvdata->dev_data->regmap);
 if (IS_ERR(drvdata->dac.virt_regmap)) {
  dev_err(&pdev->dev, "audio registers not enabled\n");
  return PTR_ERR(drvdata->dac.virt_regmap);
 }


 drvdata->dac.regmap =
  syscon_regmap_lookup_by_phandle(pnode, "st,syscfg");
 if (IS_ERR(drvdata->dac.regmap)) {
  dev_err(&pdev->dev, "syscon registers not available\n");
  return PTR_ERR(drvdata->dac.regmap);
 }
 drvdata->spdif.regmap = drvdata->dac.regmap;

 sti_sas_dai[STI_SAS_DAI_ANALOG_OUT].ops = drvdata->dev_data->dac_ops;


 sti_sas_driver.dapm_widgets = drvdata->dev_data->dapm_widgets;
 sti_sas_driver.num_dapm_widgets = drvdata->dev_data->num_dapm_widgets;

 sti_sas_driver.dapm_routes = drvdata->dev_data->dapm_routes;
 sti_sas_driver.num_dapm_routes = drvdata->dev_data->num_dapm_routes;


 dev_set_drvdata(&pdev->dev, drvdata);

 return devm_snd_soc_register_component(&pdev->dev, &sti_sas_driver,
     sti_sas_dai,
     ARRAY_SIZE(sti_sas_dai));
}
