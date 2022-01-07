
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8962_priv {int regmap; } ;


 int WM8962_ANALOGUE_CLOCKING1 ;
 int WM8962_CLKOUT2_SEL_MASK ;
 int WM8962_CLKOUT2_SEL_SHIFT ;
 int WM8962_CLKOUT3_SEL_MASK ;
 int WM8962_CLKOUT3_SEL_SHIFT ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static void wm8962_set_gpio_mode(struct wm8962_priv *wm8962, int gpio)
{
 int mask = 0;
 int val = 0;



 switch (gpio) {
 case 2:
  mask = WM8962_CLKOUT2_SEL_MASK;
  val = 1 << WM8962_CLKOUT2_SEL_SHIFT;
  break;
 case 3:
  mask = WM8962_CLKOUT3_SEL_MASK;
  val = 1 << WM8962_CLKOUT3_SEL_SHIFT;
  break;
 default:
  break;
 }

 if (mask)
  regmap_update_bits(wm8962->regmap, WM8962_ANALOGUE_CLOCKING1,
       mask, val);
}
