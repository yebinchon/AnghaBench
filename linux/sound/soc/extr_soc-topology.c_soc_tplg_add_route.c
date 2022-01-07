
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {int index; scalar_t__ comp; TYPE_1__* ops; } ;
struct snd_soc_dapm_route {int dummy; } ;
struct TYPE_2__ {int (* dapm_route_load ) (scalar_t__,int ,struct snd_soc_dapm_route*) ;} ;


 int stub1 (scalar_t__,int ,struct snd_soc_dapm_route*) ;

__attribute__((used)) static int soc_tplg_add_route(struct soc_tplg *tplg,
 struct snd_soc_dapm_route *route)
{
 if (tplg->comp && tplg->ops && tplg->ops->dapm_route_load)
  return tplg->ops->dapm_route_load(tplg->comp, tplg->index,
   route);

 return 0;
}
