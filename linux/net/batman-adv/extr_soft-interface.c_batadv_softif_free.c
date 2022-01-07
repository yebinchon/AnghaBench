
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int batadv_debugfs_del_meshif (struct net_device*) ;
 int batadv_mesh_free (struct net_device*) ;
 int rcu_barrier () ;

__attribute__((used)) static void batadv_softif_free(struct net_device *dev)
{
 batadv_debugfs_del_meshif(dev);
 batadv_mesh_free(dev);





 rcu_barrier();
}
