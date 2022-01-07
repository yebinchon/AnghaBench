
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dst_entry {TYPE_2__* dev; } ;
struct rtable {struct dst_entry dst; } ;
struct TYPE_3__ {int sysctl_icmp_ratelimit; int peers; } ;
struct net {TYPE_1__ ipv4; } ;
struct inet_peer {int dummy; } ;
struct flowi4 {int daddr; } ;
struct TYPE_4__ {int flags; } ;


 int IFF_LOOPBACK ;
 scalar_t__ icmpv4_mask_allow (struct net*,int,int) ;
 struct inet_peer* inet_getpeer_v4 (int ,int ,int,int) ;
 int inet_peer_xrlim_allow (struct inet_peer*,int ) ;
 int inet_putpeer (struct inet_peer*) ;
 int l3mdev_master_ifindex (TYPE_2__*) ;

__attribute__((used)) static bool icmpv4_xrlim_allow(struct net *net, struct rtable *rt,
          struct flowi4 *fl4, int type, int code)
{
 struct dst_entry *dst = &rt->dst;
 struct inet_peer *peer;
 bool rc = 1;
 int vif;

 if (icmpv4_mask_allow(net, type, code))
  goto out;


 if (dst->dev && (dst->dev->flags&IFF_LOOPBACK))
  goto out;

 vif = l3mdev_master_ifindex(dst->dev);
 peer = inet_getpeer_v4(net->ipv4.peers, fl4->daddr, vif, 1);
 rc = inet_peer_xrlim_allow(peer, net->ipv4.sysctl_icmp_ratelimit);
 if (peer)
  inet_putpeer(peer);
out:
 return rc;
}
