
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct aif {int master; int id; } ;


 int aif_set_master (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static inline
int aif_prepare(struct snd_soc_component *component, struct aif *aif)
{
 int ret;

 ret = aif_set_master(component, aif->id, aif->master);
 if (ret < 0)
  return ret;

 return 0;
}
