
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_route {int source; int sink; } ;
struct snd_soc_card {int num_of_dapm_routes; struct snd_soc_dapm_route* of_dapm_routes; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;


 int EINVAL ;
 int GFP_KERNEL ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct snd_soc_dapm_route* devm_kcalloc (TYPE_1__*,int,int,int ) ;
 int of_property_count_strings (struct device_node*,char const*) ;
 int of_property_read_string_index (struct device_node*,char const*,int,int *) ;

int snd_soc_of_parse_audio_routing(struct snd_soc_card *card,
       const char *propname)
{
 struct device_node *np = card->dev->of_node;
 int num_routes;
 struct snd_soc_dapm_route *routes;
 int i, ret;

 num_routes = of_property_count_strings(np, propname);
 if (num_routes < 0 || num_routes & 1) {
  dev_err(card->dev,
   "ASoC: Property '%s' does not exist or its length is not even\n",
   propname);
  return -EINVAL;
 }
 num_routes /= 2;
 if (!num_routes) {
  dev_err(card->dev, "ASoC: Property '%s's length is zero\n",
   propname);
  return -EINVAL;
 }

 routes = devm_kcalloc(card->dev, num_routes, sizeof(*routes),
         GFP_KERNEL);
 if (!routes) {
  dev_err(card->dev,
   "ASoC: Could not allocate DAPM route table\n");
  return -EINVAL;
 }

 for (i = 0; i < num_routes; i++) {
  ret = of_property_read_string_index(np, propname,
   2 * i, &routes[i].sink);
  if (ret) {
   dev_err(card->dev,
    "ASoC: Property '%s' index %d could not be read: %d\n",
    propname, 2 * i, ret);
   return -EINVAL;
  }
  ret = of_property_read_string_index(np, propname,
   (2 * i) + 1, &routes[i].source);
  if (ret) {
   dev_err(card->dev,
    "ASoC: Property '%s' index %d could not be read: %d\n",
    propname, (2 * i) + 1, ret);
   return -EINVAL;
  }
 }

 card->num_of_dapm_routes = num_routes;
 card->of_dapm_routes = routes;

 return 0;
}
