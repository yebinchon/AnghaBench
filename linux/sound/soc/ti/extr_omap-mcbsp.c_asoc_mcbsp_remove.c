
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct omap_mcbsp {int fclk; TYPE_1__* dev; TYPE_2__* pdata; int pm_qos_req; int id; } ;
struct TYPE_6__ {int (* free ) (int ) ;} ;
struct TYPE_5__ {scalar_t__ buffer_size; TYPE_3__* ops; } ;
struct TYPE_4__ {int kobj; } ;


 int additional_attr_group ;
 int clk_put (int ) ;
 int omap_mcbsp_st_cleanup (struct platform_device*) ;
 struct omap_mcbsp* platform_get_drvdata (struct platform_device*) ;
 int pm_qos_remove_request (int *) ;
 scalar_t__ pm_qos_request_active (int *) ;
 int stub1 (int ) ;
 int sysfs_remove_group (int *,int *) ;

__attribute__((used)) static int asoc_mcbsp_remove(struct platform_device *pdev)
{
 struct omap_mcbsp *mcbsp = platform_get_drvdata(pdev);

 if (mcbsp->pdata->ops && mcbsp->pdata->ops->free)
  mcbsp->pdata->ops->free(mcbsp->id);

 if (pm_qos_request_active(&mcbsp->pm_qos_req))
  pm_qos_remove_request(&mcbsp->pm_qos_req);

 if (mcbsp->pdata->buffer_size)
  sysfs_remove_group(&mcbsp->dev->kobj, &additional_attr_group);

 omap_mcbsp_st_cleanup(pdev);

 clk_put(mcbsp->fclk);

 return 0;
}
