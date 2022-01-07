
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic32x4_priv {int supply_av; int supply_dv; int supply_ldo; int supply_iov; } ;


 int IS_ERR (int ) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void aic32x4_disable_regulators(struct aic32x4_priv *aic32x4)
{
 regulator_disable(aic32x4->supply_iov);

 if (!IS_ERR(aic32x4->supply_ldo))
  regulator_disable(aic32x4->supply_ldo);

 if (!IS_ERR(aic32x4->supply_dv))
  regulator_disable(aic32x4->supply_dv);

 if (!IS_ERR(aic32x4->supply_av))
  regulator_disable(aic32x4->supply_av);
}
