
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct max98090_priv {TYPE_1__* component; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int M98090_REG_SOFTWARE_RESET ;
 int M98090_SWRESET_MASK ;
 int dev_err (int ,char*,int) ;
 int msleep (int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int max98090_reset(struct max98090_priv *max98090)
{
 int ret;


 ret = regmap_write(max98090->regmap, M98090_REG_SOFTWARE_RESET,
  M98090_SWRESET_MASK);
 if (ret < 0) {
  dev_err(max98090->component->dev,
   "Failed to reset codec: %d\n", ret);
  return ret;
 }

 msleep(20);
 return ret;
}
