
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 scalar_t__ of_device_is_compatible (struct device_node*,char const*) ;
 struct device_node* of_find_node_by_name (int *,char*) ;
 struct device_node* of_get_next_child (struct device_node*,struct device_node*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static struct device_node *find_compatible_audio_device(const char *name)
{
 struct device_node *gpiop;
 struct device_node *np;

 gpiop = of_find_node_by_name(((void*)0), "gpio");
 if (!gpiop)
  return ((void*)0);

 for (np = of_get_next_child(gpiop, ((void*)0)); np;
   np = of_get_next_child(gpiop, np)) {
  if (of_device_is_compatible(np, name))
   break;
 }
 of_node_put(gpiop);
 return np;
}
