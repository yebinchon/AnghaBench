
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dev; } ;
struct of_phandle_args {struct device_node* np; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int dev_err (int ,char*,int) ;
 int of_parse_phandle_with_args (struct device_node*,char*,char*,int ,struct of_phandle_args*) ;
 int snd_soc_get_dai_name (struct of_phandle_args*,char const**) ;

__attribute__((used)) static int axg_card_parse_dai(struct snd_soc_card *card,
         struct device_node *node,
         struct device_node **dai_of_node,
         const char **dai_name)
{
 struct of_phandle_args args;
 int ret;

 if (!dai_name || !dai_of_node || !node)
  return -EINVAL;

 ret = of_parse_phandle_with_args(node, "sound-dai",
      "#sound-dai-cells", 0, &args);
 if (ret) {
  if (ret != -EPROBE_DEFER)
   dev_err(card->dev, "can't parse dai %d\n", ret);
  return ret;
 }
 *dai_of_node = args.np;

 return snd_soc_get_dai_name(&args, dai_name);
}
