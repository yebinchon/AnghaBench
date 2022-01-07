
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int power_checked; int new_power; int (* power_check ) (struct snd_soc_dapm_widget*) ;scalar_t__ force; } ;


 int stub1 (struct snd_soc_dapm_widget*) ;

__attribute__((used)) static int dapm_widget_power_check(struct snd_soc_dapm_widget *w)
{
 if (w->power_checked)
  return w->new_power;

 if (w->force)
  w->new_power = 1;
 else
  w->new_power = w->power_check(w);

 w->power_checked = 1;

 return w->new_power;
}
