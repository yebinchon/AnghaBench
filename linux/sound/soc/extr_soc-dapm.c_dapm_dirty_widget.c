
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dirty; } ;


 int list_empty (int *) ;

__attribute__((used)) static bool dapm_dirty_widget(struct snd_soc_dapm_widget *w)
{
 return !list_empty(&w->dirty);
}
