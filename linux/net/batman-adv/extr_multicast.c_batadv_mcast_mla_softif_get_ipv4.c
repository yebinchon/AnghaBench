
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int dummy; } ;
struct ip_mc_list {int multiaddr; int next_rcu; } ;
struct in_device {int mc_list; } ;
struct hlist_head {int dummy; } ;
struct batadv_mcast_mla_flags {int tvlv_flags; } ;
struct batadv_hw_addr {int list; int addr; } ;


 int BATADV_MCAST_WANT_ALL_IPV4 ;
 int BATADV_MCAST_WANT_ALL_UNSNOOPABLES ;
 int BATADV_MCAST_WANT_NO_RTR4 ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 struct in_device* __in_dev_get_rcu (struct net_device*) ;
 scalar_t__ batadv_mcast_mla_is_duplicate (int *,struct hlist_head*) ;
 int ether_addr_copy (int ,int *) ;
 int hlist_add_head (int *,struct hlist_head*) ;
 int ip_eth_mc_map (int ,int *) ;
 scalar_t__ ipv4_is_local_multicast (int ) ;
 struct batadv_hw_addr* kmalloc (int,int ) ;
 struct ip_mc_list* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int
batadv_mcast_mla_softif_get_ipv4(struct net_device *dev,
     struct hlist_head *mcast_list,
     struct batadv_mcast_mla_flags *flags)
{
 struct batadv_hw_addr *new;
 struct in_device *in_dev;
 u8 mcast_addr[ETH_ALEN];
 struct ip_mc_list *pmc;
 int ret = 0;

 if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_IPV4)
  return 0;

 rcu_read_lock();

 in_dev = __in_dev_get_rcu(dev);
 if (!in_dev) {
  rcu_read_unlock();
  return 0;
 }

 for (pmc = rcu_dereference(in_dev->mc_list); pmc;
      pmc = rcu_dereference(pmc->next_rcu)) {
  if (flags->tvlv_flags & BATADV_MCAST_WANT_ALL_UNSNOOPABLES &&
      ipv4_is_local_multicast(pmc->multiaddr))
   continue;

  if (!(flags->tvlv_flags & BATADV_MCAST_WANT_NO_RTR4) &&
      !ipv4_is_local_multicast(pmc->multiaddr))
   continue;

  ip_eth_mc_map(pmc->multiaddr, mcast_addr);

  if (batadv_mcast_mla_is_duplicate(mcast_addr, mcast_list))
   continue;

  new = kmalloc(sizeof(*new), GFP_ATOMIC);
  if (!new) {
   ret = -ENOMEM;
   break;
  }

  ether_addr_copy(new->addr, mcast_addr);
  hlist_add_head(&new->list, mcast_list);
  ret++;
 }
 rcu_read_unlock();

 return ret;
}
