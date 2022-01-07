
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skl_clk_data {size_t avail_clk_cnt; TYPE_1__** clk; } ;
struct TYPE_2__ {int lookup; } ;


 int clkdev_drop (int ) ;

__attribute__((used)) static void unregister_src_clk(struct skl_clk_data *dclk)
{
 while (dclk->avail_clk_cnt--)
  clkdev_drop(dclk->clk[dclk->avail_clk_cnt]->lookup);
}
