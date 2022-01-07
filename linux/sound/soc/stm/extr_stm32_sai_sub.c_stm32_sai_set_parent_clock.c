
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_sai_sub_data {int sai_ck; TYPE_1__* pdata; struct platform_device* pdev; } ;
struct platform_device {int dev; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* clk_x11k; struct clk* clk_x8k; } ;


 int EBUSY ;
 unsigned int SAI_RATE_11K ;
 int clk_set_parent (int ,struct clk*) ;
 int dev_err (int *,char*,int,char*) ;

__attribute__((used)) static int stm32_sai_set_parent_clock(struct stm32_sai_sub_data *sai,
          unsigned int rate)
{
 struct platform_device *pdev = sai->pdev;
 struct clk *parent_clk = sai->pdata->clk_x8k;
 int ret;

 if (!(rate % SAI_RATE_11K))
  parent_clk = sai->pdata->clk_x11k;

 ret = clk_set_parent(sai->sai_ck, parent_clk);
 if (ret)
  dev_err(&pdev->dev, " Error %d setting sai_ck parent clock. %s",
   ret, ret == -EBUSY ?
   "Active stream rates conflict\n" : "\n");

 return ret;
}
