
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona_fll {struct arizona* arizona; } ;
struct arizona {int regmap; } ;


 unsigned int ARIZONA_FLL1_ENA ;
 int arizona_fll_err (struct arizona_fll*,char*,int) ;
 int regmap_read (int ,int,unsigned int*) ;

__attribute__((used)) static int arizona_is_enabled_fll(struct arizona_fll *fll, int base)
{
 struct arizona *arizona = fll->arizona;
 unsigned int reg;
 int ret;

 ret = regmap_read(arizona->regmap, base + 1, &reg);
 if (ret != 0) {
  arizona_fll_err(fll, "Failed to read current state: %d\n",
    ret);
  return ret;
 }

 return reg & ARIZONA_FLL1_ENA;
}
