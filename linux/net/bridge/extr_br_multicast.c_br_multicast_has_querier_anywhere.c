
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;
struct ethhdr {int h_proto; } ;
typedef int eth ;


 int br_multicast_querier_exists (struct net_bridge*,struct ethhdr*) ;
 struct net_bridge_port* br_port_get_rcu (struct net_device*) ;
 int htons (int) ;
 int memset (struct ethhdr*,int ,int) ;
 int netif_is_bridge_port (struct net_device*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

bool br_multicast_has_querier_anywhere(struct net_device *dev, int proto)
{
 struct net_bridge *br;
 struct net_bridge_port *port;
 struct ethhdr eth;
 bool ret = 0;

 rcu_read_lock();
 if (!netif_is_bridge_port(dev))
  goto unlock;

 port = br_port_get_rcu(dev);
 if (!port || !port->br)
  goto unlock;

 br = port->br;

 memset(&eth, 0, sizeof(eth));
 eth.h_proto = htons(proto);

 ret = br_multicast_querier_exists(br, &eth);

unlock:
 rcu_read_unlock();
 return ret;
}
