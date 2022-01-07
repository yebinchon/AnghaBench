
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_tdm_info {struct regmap* regbase; int phy_addr; struct regmap* dai_pclk; struct regmap* dai_wclk; struct device* dev; } ;
struct resource {int start; } ;
struct regmap {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct of_phandle_args {unsigned int* args; int np; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int dev_err (struct device*,char*,...) ;
 void* devm_clk_get (struct device*,char*) ;
 struct regmap* devm_ioremap_resource (struct device*,struct resource*) ;
 struct zx_tdm_info* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_dmaengine_pcm_register (struct device*,int *,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int of_node_put (int ) ;
 int of_parse_phandle_with_fixed_args (int ,char*,int,int ,struct of_phandle_args*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct zx_tdm_info*) ;
 int regmap_update_bits (struct regmap*,unsigned int,unsigned int,unsigned int) ;
 struct regmap* syscon_node_to_regmap (int ) ;
 int zx_tdm_component ;
 int zx_tdm_dai ;
 int zx_tdm_init_state (struct zx_tdm_info*) ;

__attribute__((used)) static int zx_tdm_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct of_phandle_args out_args;
 unsigned int dma_reg_offset;
 struct zx_tdm_info *zx_tdm;
 unsigned int dma_mask;
 struct resource *res;
 struct regmap *regmap_sysctrl;
 int ret;

 zx_tdm = devm_kzalloc(&pdev->dev, sizeof(*zx_tdm), GFP_KERNEL);
 if (!zx_tdm)
  return -ENOMEM;

 zx_tdm->dev = dev;

 zx_tdm->dai_wclk = devm_clk_get(&pdev->dev, "wclk");
 if (IS_ERR(zx_tdm->dai_wclk)) {
  dev_err(&pdev->dev, "Fail to get wclk\n");
  return PTR_ERR(zx_tdm->dai_wclk);
 }

 zx_tdm->dai_pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(zx_tdm->dai_pclk)) {
  dev_err(&pdev->dev, "Fail to get pclk\n");
  return PTR_ERR(zx_tdm->dai_pclk);
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 zx_tdm->phy_addr = res->start;
 zx_tdm->regbase = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(zx_tdm->regbase))
  return PTR_ERR(zx_tdm->regbase);

 ret = of_parse_phandle_with_fixed_args(pdev->dev.of_node,
    "zte,tdm-dma-sysctrl", 2, 0, &out_args);
 if (ret) {
  dev_err(&pdev->dev, "Fail to get zte,tdm-dma-sysctrl\n");
  return ret;
 }

 dma_reg_offset = out_args.args[0];
 dma_mask = out_args.args[1];
 regmap_sysctrl = syscon_node_to_regmap(out_args.np);
 if (IS_ERR(regmap_sysctrl)) {
  of_node_put(out_args.np);
  return PTR_ERR(regmap_sysctrl);
 }

 regmap_update_bits(regmap_sysctrl, dma_reg_offset, dma_mask, dma_mask);
 of_node_put(out_args.np);

 zx_tdm_init_state(zx_tdm);
 platform_set_drvdata(pdev, zx_tdm);

 ret = devm_snd_soc_register_component(&pdev->dev, &zx_tdm_component,
      &zx_tdm_dai, 1);
 if (ret) {
  dev_err(&pdev->dev, "Register DAI failed: %d\n", ret);
  return ret;
 }

 ret = devm_snd_dmaengine_pcm_register(&pdev->dev, ((void*)0), 0);
 if (ret)
  dev_err(&pdev->dev, "Register platform PCM failed: %d\n", ret);

 return ret;
}
