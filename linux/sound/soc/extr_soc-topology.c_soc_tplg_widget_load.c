
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {int index; scalar_t__ comp; TYPE_1__* ops; } ;
struct snd_soc_tplg_dapm_widget {int dummy; } ;
struct snd_soc_dapm_widget {int dummy; } ;
struct TYPE_2__ {int (* widget_load ) (scalar_t__,int ,struct snd_soc_dapm_widget*,struct snd_soc_tplg_dapm_widget*) ;} ;


 int stub1 (scalar_t__,int ,struct snd_soc_dapm_widget*,struct snd_soc_tplg_dapm_widget*) ;

__attribute__((used)) static int soc_tplg_widget_load(struct soc_tplg *tplg,
 struct snd_soc_dapm_widget *w, struct snd_soc_tplg_dapm_widget *tplg_w)
{
 if (tplg->comp && tplg->ops && tplg->ops->widget_load)
  return tplg->ops->widget_load(tplg->comp, tplg->index, w,
   tplg_w);

 return 0;
}
