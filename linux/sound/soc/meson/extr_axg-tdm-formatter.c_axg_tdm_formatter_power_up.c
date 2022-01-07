
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dapm_widget {int dummy; } ;
struct axg_tdm_stream {TYPE_1__* iface; } ;
struct axg_tdm_formatter {int pclk; struct axg_tdm_stream* stream; int lrclk_sel; int sclk_sel; TYPE_3__* drv; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {struct axg_tdm_stream* (* get_stream ) (struct snd_soc_dapm_widget*) ;} ;
struct TYPE_4__ {int lrclk; int sclk; } ;


 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int axg_tdm_formatter_attach (struct axg_tdm_formatter*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_parent (int ,int ) ;
 struct axg_tdm_stream* stub1 (struct snd_soc_dapm_widget*) ;

__attribute__((used)) static int axg_tdm_formatter_power_up(struct axg_tdm_formatter *formatter,
          struct snd_soc_dapm_widget *w)
{
 struct axg_tdm_stream *ts = formatter->drv->ops->get_stream(w);
 int ret;






 if (WARN_ON(!ts))
  return -ENODEV;


 ret = clk_prepare_enable(formatter->pclk);
 if (ret)
  return ret;


 ret = clk_set_parent(formatter->sclk_sel, ts->iface->sclk);
 if (ret)
  goto disable_pclk;


 ret = clk_set_parent(formatter->lrclk_sel, ts->iface->lrclk);
 if (ret)
  goto disable_pclk;

 formatter->stream = ts;
 ret = axg_tdm_formatter_attach(formatter);
 if (ret)
  goto disable_pclk;

 return 0;

disable_pclk:
 clk_disable_unprepare(formatter->pclk);
 return ret;
}
