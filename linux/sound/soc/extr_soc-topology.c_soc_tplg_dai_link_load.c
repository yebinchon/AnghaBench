
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {int index; scalar_t__ comp; TYPE_1__* ops; } ;
struct snd_soc_tplg_link_config {int dummy; } ;
struct snd_soc_dai_link {int dummy; } ;
struct TYPE_2__ {int (* link_load ) (scalar_t__,int ,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*) ;} ;


 int stub1 (scalar_t__,int ,struct snd_soc_dai_link*,struct snd_soc_tplg_link_config*) ;

__attribute__((used)) static int soc_tplg_dai_link_load(struct soc_tplg *tplg,
 struct snd_soc_dai_link *link, struct snd_soc_tplg_link_config *cfg)
{
 if (tplg->comp && tplg->ops && tplg->ops->link_load)
  return tplg->ops->link_load(tplg->comp, tplg->index, link, cfg);

 return 0;
}
