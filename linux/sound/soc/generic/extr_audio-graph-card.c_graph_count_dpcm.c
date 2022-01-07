
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_info {int dais; int conf; int link; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct asoc_simple_priv {int dummy; } ;


 int dev_dbg (struct device*,char*) ;
 struct device* simple_priv_to_dev (struct asoc_simple_priv*) ;

__attribute__((used)) static int graph_count_dpcm(struct asoc_simple_priv *priv,
       struct device_node *cpu_ep,
       struct device_node *codec_ep,
       struct link_info *li,
       int dup_codec)
{
 struct device *dev = simple_priv_to_dev(priv);

 li->link++;
 li->dais++;

 if (!dup_codec) {
  li->link++;
  li->conf++;
  li->dais++;
 }

 dev_dbg(dev, "Count As DPCM\n");

 return 0;
}
