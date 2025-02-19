
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_base_afe {int dev; } ;
struct clk {int dummy; } ;


 int clk_set_rate (struct clk*,unsigned int) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int mt8173_afe_dais_set_clks(struct mtk_base_afe *afe,
        struct clk *m_ck, unsigned int mck_rate,
        struct clk *b_ck, unsigned int bck_rate)
{
 int ret;

 if (m_ck) {
  ret = clk_set_rate(m_ck, mck_rate);
  if (ret) {
   dev_err(afe->dev, "Failed to set m_ck rate\n");
   return ret;
  }
 }

 if (b_ck) {
  ret = clk_set_rate(b_ck, bck_rate);
  if (ret) {
   dev_err(afe->dev, "Failed to set b_ck rate\n");
   return ret;
  }
 }
 return 0;
}
