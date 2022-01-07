
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* codecs; TYPE_1__* cpus; } ;
struct TYPE_5__ {int of_node; } ;
struct TYPE_4__ {int of_node; } ;


 TYPE_3__* mop500_dai_links ;
 int of_node_put (int ) ;

__attribute__((used)) static void mop500_of_node_put(void)
{
 int i;

 for (i = 0; i < 2; i++) {
  of_node_put(mop500_dai_links[i].cpus->of_node);
  of_node_put(mop500_dai_links[i].codecs->of_node);
 }
}
