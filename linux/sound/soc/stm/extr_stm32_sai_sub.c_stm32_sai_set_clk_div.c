
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_sai_sub_data {TYPE_3__* pdev; int regmap; TYPE_2__* pdata; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int version; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;


 int EINVAL ;
 int SAI_XCR1_MCKDIV_MASK (int ) ;
 unsigned int SAI_XCR1_MCKDIV_MAX (int) ;
 int SAI_XCR1_MCKDIV_SET (unsigned int) ;
 int SAI_XCR1_MCKDIV_WIDTH (int) ;
 int STM_SAI_CR1_REGX ;
 int dev_err (int *,char*,...) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int stm32_sai_set_clk_div(struct stm32_sai_sub_data *sai,
     unsigned int div)
{
 int version = sai->pdata->conf.version;
 int ret, cr1, mask;

 if (div > SAI_XCR1_MCKDIV_MAX(version)) {
  dev_err(&sai->pdev->dev, "Divider %d out of range\n", div);
  return -EINVAL;
 }

 mask = SAI_XCR1_MCKDIV_MASK(SAI_XCR1_MCKDIV_WIDTH(version));
 cr1 = SAI_XCR1_MCKDIV_SET(div);
 ret = regmap_update_bits(sai->regmap, STM_SAI_CR1_REGX, mask, cr1);
 if (ret < 0)
  dev_err(&sai->pdev->dev, "Failed to update CR1 register\n");

 return ret;
}
