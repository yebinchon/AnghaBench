
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {struct snd_soc_component* comp; } ;
struct snd_soc_component {int dev; TYPE_1__* card; } ;
struct snd_kcontrol_new {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int snd_card; } ;


 int soc_tplg_add_dcontrol (int ,int ,struct snd_kcontrol_new*,int *,struct snd_soc_component*,struct snd_kcontrol**) ;

__attribute__((used)) static int soc_tplg_add_kcontrol(struct soc_tplg *tplg,
 struct snd_kcontrol_new *k, struct snd_kcontrol **kcontrol)
{
 struct snd_soc_component *comp = tplg->comp;

 return soc_tplg_add_dcontrol(comp->card->snd_card,
    comp->dev, k, ((void*)0), comp, kcontrol);
}
