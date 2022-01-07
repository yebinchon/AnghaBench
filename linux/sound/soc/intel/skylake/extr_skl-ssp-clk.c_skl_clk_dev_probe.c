
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_ssp_clk {TYPE_1__* rate_cfg; } ;
struct skl_clk_pdata {int num_clks; struct skl_ssp_clk* ssp_clks; struct skl_clk_parent_src* parent_clks; } ;
struct skl_clk_parent_src {int dummy; } ;
struct skl_clk_data {size_t avail_clk_cnt; int parent; int * clk; } ;
struct device {struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {scalar_t__ rate; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SKL_MAX_CLK_SRC ;
 struct skl_clk_pdata* dev_get_platdata (struct device*) ;
 struct skl_clk_data* devm_kzalloc (struct device*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct skl_clk_data*) ;
 int register_skl_clk (struct device*,struct skl_ssp_clk*,struct skl_clk_pdata*,int) ;
 int skl_register_parent_clks (struct device*,int ,struct skl_clk_parent_src*) ;
 int unregister_parent_src_clk (int ,int ) ;
 int unregister_src_clk (struct skl_clk_data*) ;

__attribute__((used)) static int skl_clk_dev_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct device *parent_dev = dev->parent;
 struct skl_clk_parent_src *parent_clks;
 struct skl_clk_pdata *clk_pdata;
 struct skl_clk_data *data;
 struct skl_ssp_clk *clks;
 int ret, i;

 clk_pdata = dev_get_platdata(&pdev->dev);
 parent_clks = clk_pdata->parent_clks;
 clks = clk_pdata->ssp_clks;
 if (!parent_clks || !clks)
  return -EIO;

 data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
 if (!data)
  return -ENOMEM;


 ret = skl_register_parent_clks(parent_dev, data->parent, parent_clks);
 if (ret < 0)
  return ret;

 for (i = 0; i < clk_pdata->num_clks; i++) {




  if (clks[i].rate_cfg[0].rate == 0)
   continue;

  data->clk[data->avail_clk_cnt] = register_skl_clk(dev,
    &clks[i], clk_pdata, i);

  if (IS_ERR(data->clk[data->avail_clk_cnt])) {
   ret = PTR_ERR(data->clk[data->avail_clk_cnt++]);
   goto err_unreg_skl_clk;
  }
 }

 platform_set_drvdata(pdev, data);

 return 0;

err_unreg_skl_clk:
 unregister_src_clk(data);
 unregister_parent_src_clk(data->parent, SKL_MAX_CLK_SRC);

 return ret;
}
