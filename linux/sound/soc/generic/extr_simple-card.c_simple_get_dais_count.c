
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_info {int link; int dais; int conf; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct asoc_simple_priv {int dummy; } ;


 int dev_dbg (struct device*,char*,int,int,int ) ;
 int simple_count_dpcm ;
 int simple_count_noml ;
 int simple_for_each_link (struct asoc_simple_priv*,struct link_info*,int ,int ) ;
 struct device* simple_priv_to_dev (struct asoc_simple_priv*) ;

__attribute__((used)) static void simple_get_dais_count(struct asoc_simple_priv *priv,
      struct link_info *li)
{
 struct device *dev = simple_priv_to_dev(priv);
 struct device_node *top = dev->of_node;
 if (!top) {
  li->link = 1;
  li->dais = 2;
  li->conf = 0;
  return;
 }

 simple_for_each_link(priv, li,
        simple_count_noml,
        simple_count_dpcm);

 dev_dbg(dev, "link %d, dais %d, ccnf %d\n",
  li->link, li->dais, li->conf);
}
