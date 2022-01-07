
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_link_component {struct device_node* of_node; int dai_name; } ;
struct of_phandle_args {int args_count; int * args; struct device_node* np; } ;
struct device_node {int dummy; } ;


 int graph_get_dai_id (struct device_node*) ;
 int of_graph_get_endpoint_count (struct device_node*) ;
 struct device_node* of_graph_get_port_parent (struct device_node*) ;
 int snd_soc_get_dai_name (struct of_phandle_args*,int *) ;

__attribute__((used)) static int asoc_simple_parse_dai(struct device_node *ep,
     struct snd_soc_dai_link_component *dlc,
     int *is_single_link)
{
 struct device_node *node;
 struct of_phandle_args args;
 int ret;

 if (!ep)
  return 0;

 node = of_graph_get_port_parent(ep);


 args.np = node;
 args.args[0] = graph_get_dai_id(ep);
 args.args_count = (of_graph_get_endpoint_count(node) > 1);
 ret = snd_soc_get_dai_name(&args, &dlc->dai_name);
 if (ret < 0)
  return ret;

 dlc->of_node = node;

 if (is_single_link)
  *is_single_link = of_graph_get_endpoint_count(node) == 1;

 return 0;
}
