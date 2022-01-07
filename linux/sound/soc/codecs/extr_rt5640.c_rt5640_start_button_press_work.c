
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5640_priv {int pressed; int press_reported; int bp_work; scalar_t__ release_count; scalar_t__ press_count; scalar_t__ poll_count; } ;


 int BP_POLL_TIME ;
 int msecs_to_jiffies (int ) ;
 int rt5640_clear_micbias1_ovcd (struct snd_soc_component*) ;
 int schedule_delayed_work (int *,int ) ;
 struct rt5640_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt5640_start_button_press_work(struct snd_soc_component *component)
{
 struct rt5640_priv *rt5640 = snd_soc_component_get_drvdata(component);

 rt5640->poll_count = 0;
 rt5640->press_count = 0;
 rt5640->release_count = 0;
 rt5640->pressed = 0;
 rt5640->press_reported = 0;
 rt5640_clear_micbias1_ovcd(component);
 schedule_delayed_work(&rt5640->bp_work, msecs_to_jiffies(BP_POLL_TIME));
}
