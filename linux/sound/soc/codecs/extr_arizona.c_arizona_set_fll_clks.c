
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;
struct arizona_fll {struct arizona* arizona; } ;
struct arizona {struct clk** mclk; int regmap; } ;


 unsigned int ARIZONA_FLL1_CLK_REF_SRC_MASK ;
 unsigned int ARIZONA_FLL1_CLK_REF_SRC_SHIFT ;


 size_t ARIZONA_MCLK1 ;
 size_t ARIZONA_MCLK2 ;
 int arizona_fll_err (struct arizona_fll*,char*,int) ;
 int clk_disable_unprepare (struct clk*) ;
 int clk_prepare_enable (struct clk*) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int arizona_set_fll_clks(struct arizona_fll *fll, int base, bool ena)
{
 struct arizona *arizona = fll->arizona;
 unsigned int val;
 struct clk *clk;
 int ret;

 ret = regmap_read(arizona->regmap, base + 6, &val);
 if (ret != 0) {
  arizona_fll_err(fll, "Failed to read current source: %d\n",
    ret);
  return ret;
 }

 val &= ARIZONA_FLL1_CLK_REF_SRC_MASK;
 val >>= ARIZONA_FLL1_CLK_REF_SRC_SHIFT;

 switch (val) {
 case 129:
  clk = arizona->mclk[ARIZONA_MCLK1];
  break;
 case 128:
  clk = arizona->mclk[ARIZONA_MCLK2];
  break;
 default:
  return 0;
 }

 if (ena) {
  return clk_prepare_enable(clk);
 } else {
  clk_disable_unprepare(clk);
  return 0;
 }
}
