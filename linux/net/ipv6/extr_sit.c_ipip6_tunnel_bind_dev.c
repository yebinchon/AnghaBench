
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {scalar_t__ mtu; scalar_t__ hard_header_len; int flags; } ;
struct iphdr {int tos; int saddr; scalar_t__ daddr; } ;
struct TYPE_4__ {scalar_t__ link; struct iphdr iph; } ;
struct ip_tunnel {int hlen; TYPE_2__ parms; int net; } ;
struct flowi4 {int dummy; } ;


 int IFF_POINTOPOINT ;
 int IPPROTO_IPV6 ;
 scalar_t__ IPV6_MIN_MTU ;
 int IS_ERR (struct rtable*) ;
 int RT_TOS (int ) ;
 struct net_device* __dev_get_by_index (int ,scalar_t__) ;
 struct rtable* ip_route_output_ports (int ,struct flowi4*,int *,scalar_t__,int ,int ,int ,int ,int ,scalar_t__) ;
 int ip_rt_put (struct rtable*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int netif_is_l3_master (struct net_device*) ;

__attribute__((used)) static void ipip6_tunnel_bind_dev(struct net_device *dev)
{
 struct net_device *tdev = ((void*)0);
 struct ip_tunnel *tunnel;
 const struct iphdr *iph;
 struct flowi4 fl4;

 tunnel = netdev_priv(dev);
 iph = &tunnel->parms.iph;

 if (iph->daddr) {
  struct rtable *rt = ip_route_output_ports(tunnel->net, &fl4,
         ((void*)0),
         iph->daddr, iph->saddr,
         0, 0,
         IPPROTO_IPV6,
         RT_TOS(iph->tos),
         tunnel->parms.link);

  if (!IS_ERR(rt)) {
   tdev = rt->dst.dev;
   ip_rt_put(rt);
  }
  dev->flags |= IFF_POINTOPOINT;
 }

 if (!tdev && tunnel->parms.link)
  tdev = __dev_get_by_index(tunnel->net, tunnel->parms.link);

 if (tdev && !netif_is_l3_master(tdev)) {
  int t_hlen = tunnel->hlen + sizeof(struct iphdr);

  dev->hard_header_len = tdev->hard_header_len + sizeof(struct iphdr);
  dev->mtu = tdev->mtu - t_hlen;
  if (dev->mtu < IPV6_MIN_MTU)
   dev->mtu = IPV6_MIN_MTU;
 }
}
