
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge {int stats; } ;


 int br_fdb_hash_fini (struct net_bridge*) ;
 int br_mdb_hash_fini (struct net_bridge*) ;
 int br_multicast_dev_del (struct net_bridge*) ;
 int br_multicast_uninit_stats (struct net_bridge*) ;
 int br_vlan_flush (struct net_bridge*) ;
 int free_percpu (int ) ;
 struct net_bridge* netdev_priv (struct net_device*) ;

__attribute__((used)) static void br_dev_uninit(struct net_device *dev)
{
 struct net_bridge *br = netdev_priv(dev);

 br_multicast_dev_del(br);
 br_multicast_uninit_stats(br);
 br_vlan_flush(br);
 br_mdb_hash_fini(br);
 br_fdb_hash_fini(br);
 free_percpu(br->stats);
}
