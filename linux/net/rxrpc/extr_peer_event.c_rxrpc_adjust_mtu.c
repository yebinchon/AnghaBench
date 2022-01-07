
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ee_info; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct rxrpc_peer {int if_mtu; int hdrsize; int mtu; int maxdata; int lock; } ;


 int _net (char*,int,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void rxrpc_adjust_mtu(struct rxrpc_peer *peer, struct sock_exterr_skb *serr)
{
 u32 mtu = serr->ee.ee_info;

 _net("Rx ICMP Fragmentation Needed (%d)", mtu);


 if (mtu > 0 && peer->if_mtu == 65535 && mtu < peer->if_mtu) {
  peer->if_mtu = mtu;
  _net("I/F MTU %u", mtu);
 }

 if (mtu == 0) {

  mtu = peer->if_mtu;
  if (mtu > 1500) {
   mtu >>= 1;
   if (mtu < 1500)
    mtu = 1500;
  } else {
   mtu -= 100;
   if (mtu < peer->hdrsize)
    mtu = peer->hdrsize + 4;
  }
 }

 if (mtu < peer->mtu) {
  spin_lock_bh(&peer->lock);
  peer->mtu = mtu;
  peer->maxdata = peer->mtu - peer->hdrsize;
  spin_unlock_bh(&peer->lock);
  _net("Net MTU %u (maxdata %u)",
       peer->mtu, peer->maxdata);
 }
}
