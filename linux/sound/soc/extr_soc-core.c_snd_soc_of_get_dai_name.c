
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_phandle_args {int np; } ;
struct device_node {int dummy; } ;


 int of_node_put (int ) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int ,struct of_phandle_args*) ;
 int snd_soc_get_dai_name (struct of_phandle_args*,char const**) ;

int snd_soc_of_get_dai_name(struct device_node *of_node,
       const char **dai_name)
{
 struct of_phandle_args args;
 int ret;

 ret = of_parse_phandle_with_args(of_node, "sound-dai",
      "#sound-dai-cells", 0, &args);
 if (ret)
  return ret;

 ret = snd_soc_get_dai_name(&args, dai_name);

 of_node_put(args.np);

 return ret;
}
