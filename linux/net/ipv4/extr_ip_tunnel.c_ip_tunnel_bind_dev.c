
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct net_device {scalar_t__ type; int hard_header_len; int needed_headroom; int mtu; int flags; } ;
struct iphdr {int tos; int saddr; scalar_t__ daddr; int protocol; } ;
struct TYPE_4__ {scalar_t__ link; int o_key; struct iphdr iph; } ;
struct ip_tunnel {int hlen; TYPE_2__ parms; int net; int dst_cache; int fwmark; } ;
struct flowi4 {int dummy; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ETH_DATA_LEN ;
 int IFF_POINTOPOINT ;
 int IPV4_MIN_MTU ;
 int IP_MAX_MTU ;
 int IS_ERR (struct rtable*) ;
 int LL_MAX_HEADER ;
 int RT_TOS (int ) ;
 struct net_device* __dev_get_by_index (int ,scalar_t__) ;
 int dst_cache_reset (int *) ;
 struct rtable* ip_route_output_key (int ,struct flowi4*) ;
 int ip_rt_put (struct rtable*) ;
 int ip_tunnel_init_flow (struct flowi4*,int ,scalar_t__,int ,int ,int ,scalar_t__,int ,int ) ;
 int min (int ,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ip_tunnel_bind_dev(struct net_device *dev)
{
 struct net_device *tdev = ((void*)0);
 struct ip_tunnel *tunnel = netdev_priv(dev);
 const struct iphdr *iph;
 int hlen = LL_MAX_HEADER;
 int mtu = ETH_DATA_LEN;
 int t_hlen = tunnel->hlen + sizeof(struct iphdr);

 iph = &tunnel->parms.iph;


 if (iph->daddr) {
  struct flowi4 fl4;
  struct rtable *rt;

  ip_tunnel_init_flow(&fl4, iph->protocol, iph->daddr,
        iph->saddr, tunnel->parms.o_key,
        RT_TOS(iph->tos), tunnel->parms.link,
        tunnel->fwmark, 0);
  rt = ip_route_output_key(tunnel->net, &fl4);

  if (!IS_ERR(rt)) {
   tdev = rt->dst.dev;
   ip_rt_put(rt);
  }
  if (dev->type != ARPHRD_ETHER)
   dev->flags |= IFF_POINTOPOINT;

  dst_cache_reset(&tunnel->dst_cache);
 }

 if (!tdev && tunnel->parms.link)
  tdev = __dev_get_by_index(tunnel->net, tunnel->parms.link);

 if (tdev) {
  hlen = tdev->hard_header_len + tdev->needed_headroom;
  mtu = min(tdev->mtu, IP_MAX_MTU);
 }

 dev->needed_headroom = t_hlen + hlen;
 mtu -= (dev->hard_header_len + t_hlen);

 if (mtu < IPV4_MIN_MTU)
  mtu = IPV4_MIN_MTU;

 return mtu;
}
