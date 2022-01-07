
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_dev {int clk_dev; TYPE_1__* pci; } ;
struct skl_clk_pdata {struct skl_dev* pvt_data; int ssp_clks; int num_clks; int parent_clks; } ;
struct platform_device_info {int id; char* name; int size_data; struct skl_clk_pdata* data; int * parent; int * member_0; } ;
struct TYPE_2__ {int dev; int device; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PTR_ERR_OR_ZERO (int ) ;
 struct skl_clk_pdata* devm_kzalloc (int *,int,int ) ;
 int init_skl_xtal_rate (int ) ;
 int platform_device_register_full (struct platform_device_info*) ;
 int skl_clk_src ;
 int skl_get_clks (struct skl_dev*,int ) ;
 int skl_ssp_clks ;

__attribute__((used)) static int skl_clock_device_register(struct skl_dev *skl)
{
 struct platform_device_info pdevinfo = {((void*)0)};
 struct skl_clk_pdata *clk_pdata;

 clk_pdata = devm_kzalloc(&skl->pci->dev, sizeof(*clk_pdata),
       GFP_KERNEL);
 if (!clk_pdata)
  return -ENOMEM;

 init_skl_xtal_rate(skl->pci->device);

 clk_pdata->parent_clks = skl_clk_src;
 clk_pdata->ssp_clks = skl_ssp_clks;
 clk_pdata->num_clks = ARRAY_SIZE(skl_ssp_clks);


 skl_get_clks(skl, clk_pdata->ssp_clks);
 clk_pdata->pvt_data = skl;


 pdevinfo.parent = &skl->pci->dev;
 pdevinfo.id = -1;
 pdevinfo.name = "skl-ssp-clk";
 pdevinfo.data = clk_pdata;
 pdevinfo.size_data = sizeof(*clk_pdata);
 skl->clk_dev = platform_device_register_full(&pdevinfo);
 return PTR_ERR_OR_ZERO(skl->clk_dev);
}
