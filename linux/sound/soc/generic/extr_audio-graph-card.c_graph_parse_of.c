
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_card {int dummy; } ;
struct link_info {int cpu; } ;
struct asoc_simple_priv {int dummy; } ;
typedef int li ;


 int asoc_simple_parse_card_name (struct snd_soc_card*,int *) ;
 int asoc_simple_parse_routing (struct snd_soc_card*,int *) ;
 int asoc_simple_parse_widgets (struct snd_soc_card*,int *) ;
 int graph_dai_link_of ;
 int graph_dai_link_of_dpcm ;
 int graph_for_each_link (struct asoc_simple_priv*,struct link_info*,int ,int ) ;
 int memset (struct link_info*,int ,int) ;
 struct snd_soc_card* simple_priv_to_card (struct asoc_simple_priv*) ;

__attribute__((used)) static int graph_parse_of(struct asoc_simple_priv *priv)
{
 struct snd_soc_card *card = simple_priv_to_card(priv);
 struct link_info li;
 int ret;

 ret = asoc_simple_parse_widgets(card, ((void*)0));
 if (ret < 0)
  return ret;

 ret = asoc_simple_parse_routing(card, ((void*)0));
 if (ret < 0)
  return ret;

 memset(&li, 0, sizeof(li));
 for (li.cpu = 1; li.cpu >= 0; li.cpu--) {
  ret = graph_for_each_link(priv, &li,
       graph_dai_link_of,
       graph_dai_link_of_dpcm);
  if (ret < 0)
   return ret;
 }

 return asoc_simple_parse_card_name(card, ((void*)0));
}
