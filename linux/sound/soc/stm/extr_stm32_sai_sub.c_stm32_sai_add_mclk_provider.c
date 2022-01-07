
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_sai_sub_data {int sai_mclk; TYPE_1__* pdev; int sai_ck; } ;
struct clk_hw {int clk; int init; } ;
struct stm32_sai_mclk_data {struct clk_hw hw; struct stm32_sai_sub_data* sai_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int CLK_HW_INIT (char*,char const*,int *,int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SAI_MCLK_NAME_LEN ;
 scalar_t__ STM_SAI_IS_SUB_A (struct stm32_sai_sub_data*) ;
 char* __clk_get_name (int ) ;
 int dev_dbg (struct device*,char*,char*) ;
 int dev_err (struct device*,char*,int) ;
 int devm_clk_hw_register (struct device*,struct clk_hw*) ;
 char* devm_kcalloc (struct device*,int,int,int ) ;
 struct stm32_sai_mclk_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_clk_add_hw_provider (struct device*,int ,struct clk_hw*) ;
 int mclk_ops ;
 int of_clk_hw_simple_get ;
 int strcat (char*,char*) ;

__attribute__((used)) static int stm32_sai_add_mclk_provider(struct stm32_sai_sub_data *sai)
{
 struct clk_hw *hw;
 struct stm32_sai_mclk_data *mclk;
 struct device *dev = &sai->pdev->dev;
 const char *pname = __clk_get_name(sai->sai_ck);
 char *mclk_name, *p, *s = (char *)pname;
 int ret, i = 0;

 mclk = devm_kzalloc(dev, sizeof(*mclk), GFP_KERNEL);
 if (!mclk)
  return -ENOMEM;

 mclk_name = devm_kcalloc(dev, sizeof(char),
     SAI_MCLK_NAME_LEN, GFP_KERNEL);
 if (!mclk_name)
  return -ENOMEM;





 p = mclk_name;
 while (*s && *s != '_' && (i < (SAI_MCLK_NAME_LEN - 7))) {
  *p++ = *s++;
  i++;
 }
 STM_SAI_IS_SUB_A(sai) ? strcat(p, "a_mclk") : strcat(p, "b_mclk");

 mclk->hw.init = CLK_HW_INIT(mclk_name, pname, &mclk_ops, 0);
 mclk->sai_data = sai;
 hw = &mclk->hw;

 dev_dbg(dev, "Register master clock %s\n", mclk_name);
 ret = devm_clk_hw_register(&sai->pdev->dev, hw);
 if (ret) {
  dev_err(dev, "mclk register returned %d\n", ret);
  return ret;
 }
 sai->sai_mclk = hw->clk;


 return devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get, hw);
}
