
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
struct snd_soc_dapm_widget {TYPE_2__ dobj; TYPE_1__* dapm; } ;
struct TYPE_3__ {int component; } ;


 scalar_t__ SND_SOC_DOBJ_WIDGET ;
 int SOC_TPLG_PASS_WIDGET ;
 int remove_widget (int ,TYPE_2__*,int ) ;

void snd_soc_tplg_widget_remove(struct snd_soc_dapm_widget *w)
{

 if (w->dobj.type != SND_SOC_DOBJ_WIDGET)
  return;

 remove_widget(w->dapm->component, &w->dobj, SOC_TPLG_PASS_WIDGET);
}
