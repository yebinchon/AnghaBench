
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_codec_conf {char const* name_prefix; struct device_node* of_node; } ;
struct device_node {int dummy; } ;


 int of_property_read_string (struct device_node*,char const*,char const**) ;

void snd_soc_of_parse_node_prefix(struct device_node *np,
      struct snd_soc_codec_conf *codec_conf,
      struct device_node *of_node,
      const char *propname)
{
 const char *str;
 int ret;

 ret = of_property_read_string(np, propname, &str);
 if (ret < 0) {

  return;
 }

 codec_conf->of_node = of_node;
 codec_conf->name_prefix = str;
}
