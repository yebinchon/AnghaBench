
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_sai_sub_data {TYPE_3__* pdev; TYPE_2__* pdata; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int version; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;


 int DIV_ROUND_CLOSEST (unsigned long,unsigned long) ;
 int EINVAL ;
 int SAI_XCR1_MCKDIV_MAX (int) ;
 int dev_dbg (int *,char*,unsigned long,...) ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static int stm32_sai_get_clk_div(struct stm32_sai_sub_data *sai,
     unsigned long input_rate,
     unsigned long output_rate)
{
 int version = sai->pdata->conf.version;
 int div;

 div = DIV_ROUND_CLOSEST(input_rate, output_rate);
 if (div > SAI_XCR1_MCKDIV_MAX(version)) {
  dev_err(&sai->pdev->dev, "Divider %d out of range\n", div);
  return -EINVAL;
 }
 dev_dbg(&sai->pdev->dev, "SAI divider %d\n", div);

 if (input_rate % div)
  dev_dbg(&sai->pdev->dev,
   "Rate not accurate. requested (%ld), actual (%ld)\n",
   output_rate, input_rate / div);

 return div;
}
