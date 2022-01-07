
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; int regmap; } ;


 int ARIZONA_OUTPUT_PATH_CONFIG_1L ;
 int dev_err (int ,char*,unsigned int,int) ;
 int regmap_write (int ,unsigned int,int) ;

__attribute__((used)) static int wm5110_clear_pga_volume(struct arizona *arizona, int output)
{
 unsigned int reg = ARIZONA_OUTPUT_PATH_CONFIG_1L + output * 4;
 int ret;

 ret = regmap_write(arizona->regmap, reg, 0x80);
 if (ret)
  dev_err(arizona->dev, "Failed to clear PGA (0x%x): %d\n",
   reg, ret);

 return ret;
}
