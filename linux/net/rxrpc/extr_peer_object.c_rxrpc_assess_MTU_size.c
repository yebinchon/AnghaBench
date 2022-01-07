
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rxrpc_sock {int sk; } ;
struct TYPE_10__ {int sin6_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {TYPE_2__ sin_addr; } ;
struct TYPE_11__ {int family; TYPE_4__ sin6; TYPE_3__ sin; } ;
struct TYPE_12__ {TYPE_5__ transport; } ;
struct rxrpc_peer {int if_mtu; TYPE_6__ srx; } ;
struct dst_entry {int error; } ;
struct rtable {struct dst_entry dst; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {void* fl6_sport; void* fl6_dport; int daddr; int flowi6_proto; int flowi6_scope; int flowi6_iif; } ;
struct flowi4 {int dummy; } ;
struct TYPE_7__ {struct flowi6 ip6; struct flowi4 ip4; } ;
struct flowi {TYPE_1__ u; } ;
typedef int fl ;




 int BUG () ;
 int IPPROTO_UDP ;
 int IS_ERR (struct rtable*) ;
 int LOOPBACK_IFINDEX ;
 int PTR_ERR (struct rtable*) ;
 int RT_SCOPE_UNIVERSE ;
 int _leave (char*,int) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 void* htons (int) ;
 struct dst_entry* ip6_route_output (struct net*,int *,struct flowi6*) ;
 struct rtable* ip_route_output_ports (struct net*,struct flowi4*,int *,int ,int ,void*,void*,int ,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct flowi*,int ,int) ;
 struct net* sock_net (int *) ;

__attribute__((used)) static void rxrpc_assess_MTU_size(struct rxrpc_sock *rx,
      struct rxrpc_peer *peer)
{
 struct net *net = sock_net(&rx->sk);
 struct dst_entry *dst;
 struct rtable *rt;
 struct flowi fl;
 struct flowi4 *fl4 = &fl.u.ip4;




 peer->if_mtu = 1500;

 memset(&fl, 0, sizeof(fl));
 switch (peer->srx.transport.family) {
 case 129:
  rt = ip_route_output_ports(
   net, fl4, ((void*)0),
   peer->srx.transport.sin.sin_addr.s_addr, 0,
   htons(7000), htons(7001), IPPROTO_UDP, 0, 0);
  if (IS_ERR(rt)) {
   _leave(" [route err %ld]", PTR_ERR(rt));
   return;
  }
  dst = &rt->dst;
  break;
 default:
  BUG();
 }

 peer->if_mtu = dst_mtu(dst);
 dst_release(dst);

 _leave(" [if_mtu %u]", peer->if_mtu);
}
