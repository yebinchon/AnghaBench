
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ci_parent; } ;
struct o2nm_node {TYPE_2__ nd_item; } ;
struct o2nm_cluster {int dummy; } ;
struct TYPE_3__ {int ci_parent; } ;


 struct o2nm_cluster* to_o2nm_cluster (int ) ;

__attribute__((used)) static struct o2nm_cluster *to_o2nm_cluster_from_node(struct o2nm_node *node)
{


 if (node->nd_item.ci_parent)
  return to_o2nm_cluster(node->nd_item.ci_parent->ci_parent);
 else
  return ((void*)0);
}
