
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg6_pernet_data {int tun_src; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;


 int IPV6_PREFER_SRC_PUBLIC ;
 int ipv6_addr_any (struct in6_addr*) ;
 int ipv6_dev_get_saddr (struct net*,struct net_device*,struct in6_addr*,int ,struct in6_addr*) ;
 int memcpy (struct in6_addr*,struct in6_addr*,int) ;
 struct in6_addr* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct seg6_pernet_data* seg6_pernet (struct net*) ;

__attribute__((used)) static void set_tun_src(struct net *net, struct net_device *dev,
   struct in6_addr *daddr, struct in6_addr *saddr)
{
 struct seg6_pernet_data *sdata = seg6_pernet(net);
 struct in6_addr *tun_src;

 rcu_read_lock();

 tun_src = rcu_dereference(sdata->tun_src);

 if (!ipv6_addr_any(tun_src)) {
  memcpy(saddr, tun_src, sizeof(struct in6_addr));
 } else {
  ipv6_dev_get_saddr(net, dev, daddr, IPV6_PREFER_SRC_PUBLIC,
       saddr);
 }

 rcu_read_unlock();
}
