
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_info {int conf; int link; int dais; } ;
struct device_node {int dummy; } ;
struct asoc_simple_priv {int dummy; } ;



__attribute__((used)) static int simple_count_dpcm(struct asoc_simple_priv *priv,
        struct device_node *np,
        struct device_node *codec,
        struct link_info *li, bool is_top)
{
 li->dais++;
 li->link++;
 if (np == codec)
  li->conf++;

 return 0;
}
