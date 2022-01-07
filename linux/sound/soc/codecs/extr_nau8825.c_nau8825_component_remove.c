
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct nau8825 {int dummy; } ;


 int nau8825_xtalk_cancel (struct nau8825*) ;
 struct nau8825* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void nau8825_component_remove(struct snd_soc_component *component)
{
 struct nau8825 *nau8825 = snd_soc_component_get_drvdata(component);


 nau8825_xtalk_cancel(nau8825);
}
