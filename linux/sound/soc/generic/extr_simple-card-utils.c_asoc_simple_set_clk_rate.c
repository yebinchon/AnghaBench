
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asoc_simple_dai {int clk; } ;


 unsigned long clk_get_rate (int ) ;
 int clk_set_rate (int ,unsigned long) ;

__attribute__((used)) static int asoc_simple_set_clk_rate(struct asoc_simple_dai *simple_dai,
        unsigned long rate)
{
 if (!simple_dai)
  return 0;

 if (!simple_dai->clk)
  return 0;

 if (clk_get_rate(simple_dai->clk) == rate)
  return 0;

 return clk_set_rate(simple_dai->clk, rate);
}
