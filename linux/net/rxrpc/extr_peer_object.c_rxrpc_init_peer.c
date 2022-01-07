
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct rxrpc_wire_header {int dummy; } ;
struct rxrpc_sock {int dummy; } ;
struct TYPE_3__ {int family; } ;
struct TYPE_4__ {int transport_type; TYPE_1__ transport; } ;
struct rxrpc_peer {unsigned long hash_key; int mtu; int if_mtu; int hdrsize; int maxdata; TYPE_2__ srx; int rtt_last_req; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;




 int BUG () ;

 int ktime_get_real () ;
 int rxrpc_assess_MTU_size (struct rxrpc_sock*,struct rxrpc_peer*) ;

__attribute__((used)) static void rxrpc_init_peer(struct rxrpc_sock *rx, struct rxrpc_peer *peer,
       unsigned long hash_key)
{
 peer->hash_key = hash_key;
 rxrpc_assess_MTU_size(rx, peer);
 peer->mtu = peer->if_mtu;
 peer->rtt_last_req = ktime_get_real();

 switch (peer->srx.transport.family) {
 case 130:
  peer->hdrsize = sizeof(struct iphdr);
  break;





 default:
  BUG();
 }

 switch (peer->srx.transport_type) {
 case 128:
  peer->hdrsize += sizeof(struct udphdr);
  break;
 default:
  BUG();
 }

 peer->hdrsize += sizeof(struct rxrpc_wire_header);
 peer->maxdata = peer->mtu - peer->hdrsize;
}
