
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {struct madera* madera; } ;
struct madera {int dev; int regmap; } ;


 int MADERA_SOFTWARE_RESET ;
 int dev_err (int ,char*,int,int) ;
 scalar_t__ pm_runtime_suspended (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int udelay (int) ;

__attribute__((used)) static void madera_spin_sysclk(struct madera_priv *priv)
{
 struct madera *madera = priv->madera;
 unsigned int val;
 int ret, i;


 if (pm_runtime_suspended(madera->dev))
  return;





 for (i = 0; i < 4; i++) {
  ret = regmap_read(madera->regmap, MADERA_SOFTWARE_RESET, &val);
  if (ret)
   dev_err(madera->dev,
    "Failed to read sysclk spin %d: %d\n", i, ret);
 }

 udelay(300);
}
