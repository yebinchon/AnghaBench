
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_info {int conf; int dais; int link; } ;
struct device {int dummy; } ;
struct asoc_simple_priv {int dummy; } ;


 int dev_dbg (struct device*,char*,int ,int ,int ) ;
 int graph_count_dpcm ;
 int graph_count_noml ;
 int graph_for_each_link (struct asoc_simple_priv*,struct link_info*,int ,int ) ;
 struct device* simple_priv_to_dev (struct asoc_simple_priv*) ;

__attribute__((used)) static void graph_get_dais_count(struct asoc_simple_priv *priv,
     struct link_info *li)
{
 struct device *dev = simple_priv_to_dev(priv);
 graph_for_each_link(priv, li,
       graph_count_noml,
       graph_count_dpcm);
 dev_dbg(dev, "link %d, dais %d, ccnf %d\n",
  li->link, li->dais, li->conf);
}
