
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asoc_simple_dai {int clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void asoc_simple_clk_disable(struct asoc_simple_dai *dai)
{
 if (dai)
  clk_disable_unprepare(dai->clk);
}
