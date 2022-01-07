
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dobj {int list; int type; TYPE_1__* ops; } ;
struct snd_soc_component {int dummy; } ;
struct TYPE_2__ {int (* link_unload ) (struct snd_soc_component*,struct snd_soc_dobj*) ;} ;


 int SND_SOC_DOBJ_NONE ;
 int SOC_TPLG_PASS_LINK ;
 int list_del (int *) ;
 int stub1 (struct snd_soc_component*,struct snd_soc_dobj*) ;

__attribute__((used)) static void remove_backend_link(struct snd_soc_component *comp,
 struct snd_soc_dobj *dobj, int pass)
{
 if (pass != SOC_TPLG_PASS_LINK)
  return;

 if (dobj->ops && dobj->ops->link_unload)
  dobj->ops->link_unload(comp, dobj);






 dobj->type = SND_SOC_DOBJ_NONE;
 list_del(&dobj->list);
}
