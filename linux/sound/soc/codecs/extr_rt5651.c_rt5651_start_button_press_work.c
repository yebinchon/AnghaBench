
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5651_priv {int pressed; int press_reported; int bp_work; scalar_t__ release_count; scalar_t__ press_count; scalar_t__ poll_count; } ;


 int BP_POLL_TIME ;
 int msecs_to_jiffies (int ) ;
 int rt5651_clear_micbias1_ovcd (struct snd_soc_component*) ;
 int schedule_delayed_work (int *,int ) ;
 struct rt5651_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt5651_start_button_press_work(struct snd_soc_component *component)
{
 struct rt5651_priv *rt5651 = snd_soc_component_get_drvdata(component);

 rt5651->poll_count = 0;
 rt5651->press_count = 0;
 rt5651->release_count = 0;
 rt5651->pressed = 0;
 rt5651->press_reported = 0;
 rt5651_clear_micbias1_ovcd(component);
 schedule_delayed_work(&rt5651->bp_work, msecs_to_jiffies(BP_POLL_TIME));
}
