
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int regmap; } ;


 int WM8962_PLL_SOFTWARE_RESET ;
 int WM8962_SOFTWARE_RESET ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int wm8962_reset(struct wm8962_priv *wm8962)
{
 int ret;

 ret = regmap_write(wm8962->regmap, WM8962_SOFTWARE_RESET, 0x6243);
 if (ret != 0)
  return ret;

 return regmap_write(wm8962->regmap, WM8962_PLL_SOFTWARE_RESET, 0);
}
