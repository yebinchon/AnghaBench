
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int dev; } ;
struct clk {int dummy; } ;


 int clk_prepare_enable (struct clk*) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int mt8173_afe_dais_enable_clks(struct mtk_base_afe *afe,
           struct clk *m_ck, struct clk *b_ck)
{
 int ret;

 if (m_ck) {
  ret = clk_prepare_enable(m_ck);
  if (ret) {
   dev_err(afe->dev, "Failed to enable m_ck\n");
   return ret;
  }
 }

 if (b_ck) {
  ret = clk_prepare_enable(b_ck);
  if (ret) {
   dev_err(afe->dev, "Failed to enable b_ck\n");
   return ret;
  }
 }
 return 0;
}
