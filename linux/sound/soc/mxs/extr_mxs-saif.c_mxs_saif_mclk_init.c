
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mxs_saif {scalar_t__ base; int clk; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int BP_SAIF_CTRL_BITCLK_MULT_RATE ;
 int EEXIST ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 scalar_t__ SAIF_CTRL ;
 int __clk_get_name (int ) ;
 struct clk* clk_register_divider (TYPE_1__*,char*,int ,int ,scalar_t__,int ,int,int ,int *) ;
 int dev_err (TYPE_1__*,char*,int) ;
 int of_clk_add_provider (struct device_node*,int ,struct clk*) ;
 int of_clk_src_simple_get ;
 struct mxs_saif* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mxs_saif_mclk_init(struct platform_device *pdev)
{
 struct mxs_saif *saif = platform_get_drvdata(pdev);
 struct device_node *np = pdev->dev.of_node;
 struct clk *clk;
 int ret;

 clk = clk_register_divider(&pdev->dev, "mxs_saif_mclk",
       __clk_get_name(saif->clk), 0,
       saif->base + SAIF_CTRL,
       BP_SAIF_CTRL_BITCLK_MULT_RATE, 3,
       0, ((void*)0));
 if (IS_ERR(clk)) {
  ret = PTR_ERR(clk);
  if (ret == -EEXIST)
   return 0;
  dev_err(&pdev->dev, "failed to register mclk: %d\n", ret);
  return PTR_ERR(clk);
 }

 ret = of_clk_add_provider(np, of_clk_src_simple_get, clk);
 if (ret)
  return ret;

 return 0;
}
