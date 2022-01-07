
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6asm_dai_data {int sid; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct of_phandle_args {int* args; } ;
struct device_node {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SID_MASK_DEFAULT ;
 int dev_set_drvdata (struct device*,struct q6asm_dai_data*) ;
 struct q6asm_dai_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int ,int ) ;
 int of_parse_phandle_with_fixed_args (struct device_node*,char*,int,int ,struct of_phandle_args*) ;
 int of_q6asm_parse_dai_data (struct device*,struct q6asm_dai_data*) ;
 int q6asm_fe_dai_component ;
 int q6asm_fe_dais ;

__attribute__((used)) static int q6asm_dai_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device_node *node = dev->of_node;
 struct of_phandle_args args;
 struct q6asm_dai_data *pdata;
 int rc;

 pdata = devm_kzalloc(dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 rc = of_parse_phandle_with_fixed_args(node, "iommus", 1, 0, &args);
 if (rc < 0)
  pdata->sid = -1;
 else
  pdata->sid = args.args[0] & SID_MASK_DEFAULT;

 dev_set_drvdata(dev, pdata);

 of_q6asm_parse_dai_data(dev, pdata);

 return devm_snd_soc_register_component(dev, &q6asm_fe_dai_component,
     q6asm_fe_dais,
     ARRAY_SIZE(q6asm_fe_dais));
}
