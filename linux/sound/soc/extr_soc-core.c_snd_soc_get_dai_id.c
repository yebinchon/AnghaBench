
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_link_component {int of_node; int * name; } ;
struct snd_soc_component {int dummy; } ;
struct device_node {int dummy; } ;


 int ENOTSUPP ;
 int client_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_graph_get_port_parent (struct device_node*) ;
 int of_node_put (int ) ;
 int snd_soc_component_of_xlate_dai_id (struct snd_soc_component*,struct device_node*) ;
 struct snd_soc_component* soc_find_component (struct snd_soc_dai_link_component*) ;

int snd_soc_get_dai_id(struct device_node *ep)
{
 struct snd_soc_component *component;
 struct snd_soc_dai_link_component dlc;
 int ret;

 dlc.of_node = of_graph_get_port_parent(ep);
 dlc.name = ((void*)0);






 ret = -ENOTSUPP;
 mutex_lock(&client_mutex);
 component = soc_find_component(&dlc);
 if (component)
  ret = snd_soc_component_of_xlate_dai_id(component, ep);
 mutex_unlock(&client_mutex);

 of_node_put(dlc.of_node);

 return ret;
}
