
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;


 int snd_soc_component_set_drvdata (struct snd_soc_component*,int *) ;
 int txx9aclc_soc_device ;

__attribute__((used)) static int txx9aclc_pcm_probe(struct snd_soc_component *component)
{
 snd_soc_component_set_drvdata(component, &txx9aclc_soc_device);
 return 0;
}
