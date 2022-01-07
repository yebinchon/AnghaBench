
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sock {int dummy; } ;
struct TYPE_7__ {int plen; } ;
struct rt6_info {TYPE_3__ rt6i_dst; } ;
struct TYPE_6__ {int icmpv6_time; } ;
struct TYPE_8__ {int peers; TYPE_2__ sysctl; } ;
struct net {TYPE_4__ ipv6; } ;
struct inet_peer {int dummy; } ;
struct flowi6 {int daddr; } ;
struct dst_entry {TYPE_1__* dev; scalar_t__ error; } ;
struct TYPE_5__ {int flags; } ;


 int IFF_LOOPBACK ;
 int IP6_INC_STATS (struct net*,int ,int ) ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int dst_release (struct dst_entry*) ;
 scalar_t__ icmpv6_mask_allow (struct net*,int ) ;
 struct inet_peer* inet_getpeer_v6 (int ,int *,int) ;
 int inet_peer_xrlim_allow (struct inet_peer*,int) ;
 int inet_putpeer (struct inet_peer*) ;
 int ip6_dst_idev (struct dst_entry*) ;
 struct dst_entry* ip6_route_output (struct net*,struct sock*,struct flowi6*) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static bool icmpv6_xrlim_allow(struct sock *sk, u8 type,
          struct flowi6 *fl6)
{
 struct net *net = sock_net(sk);
 struct dst_entry *dst;
 bool res = 0;

 if (icmpv6_mask_allow(net, type))
  return 1;






 dst = ip6_route_output(net, sk, fl6);
 if (dst->error) {
  IP6_INC_STATS(net, ip6_dst_idev(dst),
         IPSTATS_MIB_OUTNOROUTES);
 } else if (dst->dev && (dst->dev->flags&IFF_LOOPBACK)) {
  res = 1;
 } else {
  struct rt6_info *rt = (struct rt6_info *)dst;
  int tmo = net->ipv6.sysctl.icmpv6_time;
  struct inet_peer *peer;


  if (rt->rt6i_dst.plen < 128)
   tmo >>= ((128 - rt->rt6i_dst.plen)>>5);

  peer = inet_getpeer_v6(net->ipv6.peers, &fl6->daddr, 1);
  res = inet_peer_xrlim_allow(peer, tmo);
  if (peer)
   inet_putpeer(peer);
 }
 dst_release(dst);
 return res;
}
