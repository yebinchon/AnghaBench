
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai_link_component {int of_node; int dai_name; } ;
struct of_phandle_args {int args_count; int np; } ;
struct device_node {int dummy; } ;


 int CELL ;
 int DAI ;
 int of_parse_phandle_with_args (struct device_node*,int ,int ,int ,struct of_phandle_args*) ;
 int snd_soc_of_get_dai_name (struct device_node*,int *) ;

__attribute__((used)) static int asoc_simple_parse_dai(struct device_node *node,
     struct snd_soc_dai_link_component *dlc,
     int *is_single_link)
{
 struct of_phandle_args args;
 int ret;

 if (!node)
  return 0;





 ret = of_parse_phandle_with_args(node, DAI, CELL, 0, &args);
 if (ret)
  return ret;
 ret = snd_soc_of_get_dai_name(node, &dlc->dai_name);
 if (ret < 0)
  return ret;

 dlc->of_node = args.np;

 if (is_single_link)
  *is_single_link = !args.args_count;

 return 0;
}
