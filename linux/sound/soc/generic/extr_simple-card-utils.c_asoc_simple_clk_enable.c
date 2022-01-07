
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asoc_simple_dai {int clk; } ;


 int clk_prepare_enable (int ) ;

__attribute__((used)) static int asoc_simple_clk_enable(struct asoc_simple_dai *dai)
{
 if (dai)
  return clk_prepare_enable(dai->clk);

 return 0;
}
