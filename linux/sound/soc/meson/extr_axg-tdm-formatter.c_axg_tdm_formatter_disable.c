
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct axg_tdm_formatter {int enabled; int sclk; int lrclk; int map; TYPE_2__* drv; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* disable ) (int ) ;} ;


 int clk_disable_unprepare (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void axg_tdm_formatter_disable(struct axg_tdm_formatter *formatter)
{

 if (!formatter->enabled)
  return;

 formatter->drv->ops->disable(formatter->map);
 clk_disable_unprepare(formatter->lrclk);
 clk_disable_unprepare(formatter->sclk);
 formatter->enabled = 0;
}
