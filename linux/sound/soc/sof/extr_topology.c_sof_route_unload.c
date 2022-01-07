
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sof_route {int list; struct snd_sof_route* private; } ;
struct snd_soc_dobj {struct snd_sof_route* private; } ;
struct snd_soc_component {int dummy; } ;


 int kfree (struct snd_sof_route*) ;
 int list_del (int *) ;

__attribute__((used)) static int sof_route_unload(struct snd_soc_component *scomp,
       struct snd_soc_dobj *dobj)
{
 struct snd_sof_route *sroute;

 sroute = dobj->private;
 if (!sroute)
  return 0;


 kfree(sroute->private);
 list_del(&sroute->list);
 kfree(sroute);

 return 0;
}
