
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_fll {struct madera* madera; } ;
struct madera {int regmap; } ;


 unsigned int MADERA_FLL1_ENA ;
 scalar_t__ MADERA_FLL_CONTROL_1_OFFS ;
 int madera_fll_err (struct madera_fll*,char*,int) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;

__attribute__((used)) static int madera_is_enabled_fll(struct madera_fll *fll, int base)
{
 struct madera *madera = fll->madera;
 unsigned int reg;
 int ret;

 ret = regmap_read(madera->regmap,
     base + MADERA_FLL_CONTROL_1_OFFS, &reg);
 if (ret != 0) {
  madera_fll_err(fll, "Failed to read current state: %d\n", ret);
  return ret;
 }

 return reg & MADERA_FLL1_ENA;
}
