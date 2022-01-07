
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct axg_tdm_stream {TYPE_1__* iface; } ;
struct axg_tdm_formatter {int enabled; int map; TYPE_3__* drv; int sclk; int lrclk; struct axg_tdm_stream* stream; int reset; } ;
struct TYPE_8__ {int invert_sclk; } ;
struct TYPE_7__ {TYPE_2__* ops; TYPE_4__* quirks; } ;
struct TYPE_6__ {int (* prepare ) (int ,TYPE_4__*,struct axg_tdm_stream*) ;int (* enable ) (int ) ;} ;
struct TYPE_5__ {int fmt; } ;


 int axg_tdm_sclk_invert (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_phase (int ,int) ;
 int reset_control_reset (int ) ;
 int stub1 (int ,TYPE_4__*,struct axg_tdm_stream*) ;
 int stub2 (int ) ;

__attribute__((used)) static int axg_tdm_formatter_enable(struct axg_tdm_formatter *formatter)
{
 struct axg_tdm_stream *ts = formatter->stream;
 bool invert = formatter->drv->quirks->invert_sclk;
 int ret;


 if (formatter->enabled)
  return 0;
 ret = reset_control_reset(formatter->reset);
 if (ret)
  return ret;





 invert ^= axg_tdm_sclk_invert(ts->iface->fmt);
 ret = clk_set_phase(formatter->sclk, invert ? 180 : 0);
 if (ret)
  return ret;


 ret = formatter->drv->ops->prepare(formatter->map,
        formatter->drv->quirks,
        formatter->stream);
 if (ret)
  return ret;


 ret = clk_prepare_enable(formatter->sclk);
 if (ret)
  return ret;

 ret = clk_prepare_enable(formatter->lrclk);
 if (ret) {
  clk_disable_unprepare(formatter->sclk);
  return ret;
 }


 formatter->drv->ops->enable(formatter->map);
 formatter->enabled = 1;

 return 0;
}
