
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_mcbsp {TYPE_2__* st_data; TYPE_1__* dev; } ;
struct TYPE_4__ {int mcbsp_iclk; } ;
struct TYPE_3__ {int kobj; } ;


 int clk_put (int ) ;
 struct omap_mcbsp* platform_get_drvdata (struct platform_device*) ;
 int sidetone_attr_group ;
 int sysfs_remove_group (int *,int *) ;

void omap_mcbsp_st_cleanup(struct platform_device *pdev)
{
 struct omap_mcbsp *mcbsp = platform_get_drvdata(pdev);

 if (mcbsp->st_data) {
  sysfs_remove_group(&mcbsp->dev->kobj, &sidetone_attr_group);
  clk_put(mcbsp->st_data->mcbsp_iclk);
 }
}
