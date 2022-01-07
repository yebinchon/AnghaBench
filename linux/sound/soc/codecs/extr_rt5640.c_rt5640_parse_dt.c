
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5640_priv {int ldo1_en; } ;
struct device_node {int dummy; } ;


 int ENOENT ;
 int gpio_is_valid (int) ;
 int of_get_named_gpio (struct device_node*,char*,int ) ;

__attribute__((used)) static int rt5640_parse_dt(struct rt5640_priv *rt5640, struct device_node *np)
{
 rt5640->ldo1_en = of_get_named_gpio(np, "realtek,ldo1-en-gpios", 0);






 if (!gpio_is_valid(rt5640->ldo1_en) &&
   (rt5640->ldo1_en != -ENOENT))
  return rt5640->ldo1_en;

 return 0;
}
