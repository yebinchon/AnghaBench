
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_neigh_ifinfo {int refcount; } ;


 int batadv_neigh_ifinfo_release ;
 int kref_put (int *,int ) ;

void batadv_neigh_ifinfo_put(struct batadv_neigh_ifinfo *neigh_ifinfo)
{
 kref_put(&neigh_ifinfo->refcount, batadv_neigh_ifinfo_release);
}
