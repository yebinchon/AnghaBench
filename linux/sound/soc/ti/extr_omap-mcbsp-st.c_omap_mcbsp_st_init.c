
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct omap_mcbsp_st_data {int io_base_st; int * mcbsp_iclk; } ;
struct omap_mcbsp {struct omap_mcbsp_st_data* st_data; TYPE_1__* dev; } ;
struct TYPE_5__ {int kobj; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int *) ;
 int * clk_get (TYPE_1__*,char*) ;
 int dev_warn (TYPE_1__*,char*) ;
 int devm_ioremap (TYPE_1__*,int ,int ) ;
 struct omap_mcbsp_st_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct omap_mcbsp* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int resource_size (struct resource*) ;
 int sidetone_attr_group ;
 int sysfs_create_group (int *,int *) ;

int omap_mcbsp_st_init(struct platform_device *pdev)
{
 struct omap_mcbsp *mcbsp = platform_get_drvdata(pdev);
 struct omap_mcbsp_st_data *st_data;
 struct resource *res;
 int ret;

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "sidetone");
 if (!res)
  return 0;

 st_data = devm_kzalloc(mcbsp->dev, sizeof(*mcbsp->st_data), GFP_KERNEL);
 if (!st_data)
  return -ENOMEM;

 st_data->mcbsp_iclk = clk_get(mcbsp->dev, "ick");
 if (IS_ERR(st_data->mcbsp_iclk)) {
  dev_warn(mcbsp->dev,
    "Failed to get ick, sidetone might be broken\n");
  st_data->mcbsp_iclk = ((void*)0);
 }

 st_data->io_base_st = devm_ioremap(mcbsp->dev, res->start,
        resource_size(res));
 if (!st_data->io_base_st)
  return -ENOMEM;

 ret = sysfs_create_group(&mcbsp->dev->kobj, &sidetone_attr_group);
 if (ret)
  return ret;

 mcbsp->st_data = st_data;

 return 0;
}
