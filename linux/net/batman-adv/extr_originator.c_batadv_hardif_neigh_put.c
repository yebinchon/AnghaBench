
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_hardif_neigh_node {int refcount; } ;


 int batadv_hardif_neigh_release ;
 int kref_put (int *,int ) ;

void batadv_hardif_neigh_put(struct batadv_hardif_neigh_node *hardif_neigh)
{
 kref_put(&hardif_neigh->refcount, batadv_hardif_neigh_release);
}
