
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct lowpan_802154_neigh {int short_addr; } ;


 int IEEE802154_ADDR_SHORT_UNSPEC ;
 int cpu_to_le16 (int ) ;
 struct lowpan_802154_neigh* lowpan_802154_neigh (int ) ;
 int neighbour_priv (struct neighbour*) ;

__attribute__((used)) static int lowpan_neigh_construct(struct net_device *dev, struct neighbour *n)
{
 struct lowpan_802154_neigh *neigh = lowpan_802154_neigh(neighbour_priv(n));


 neigh->short_addr = cpu_to_le16(IEEE802154_ADDR_SHORT_UNSPEC);
 return 0;
}
