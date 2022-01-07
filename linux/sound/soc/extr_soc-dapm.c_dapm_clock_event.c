
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int clk; int dapm; } ;
struct snd_kcontrol {int dummy; } ;


 int EIO ;
 scalar_t__ SND_SOC_DAPM_EVENT_ON (int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int soc_dapm_async_complete (int ) ;

int dapm_clock_event(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 if (!w->clk)
  return -EIO;

 soc_dapm_async_complete(w->dapm);

 if (SND_SOC_DAPM_EVENT_ON(event)) {
  return clk_prepare_enable(w->clk);
 } else {
  clk_disable_unprepare(w->clk);
  return 0;
 }

 return 0;
}
