
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int serial; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_peer {unsigned int maxdata; scalar_t__ mtu; int lock; scalar_t__ hdrsize; } ;
struct rxrpc_call {int tx_winsize; int cong_ssthresh; int waitq; struct rxrpc_peer* peer; } ;
struct rxrpc_ackinfo {int maxMTU; int rxMTU; int rwind; int jumbo_max; } ;


 int RXRPC_RXTX_BUFF_SIZE ;
 int _net (char*,scalar_t__,unsigned int) ;
 int _proto (char*,int ,int,int,int,int) ;
 unsigned int min (int,int) ;
 int ntohl (int ) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int trace_rxrpc_rx_rwind_change (struct rxrpc_call*,int ,int,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void rxrpc_input_ackinfo(struct rxrpc_call *call, struct sk_buff *skb,
    struct rxrpc_ackinfo *ackinfo)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 struct rxrpc_peer *peer;
 unsigned int mtu;
 bool wake = 0;
 u32 rwind = ntohl(ackinfo->rwind);

 _proto("Rx ACK %%%u Info { rx=%u max=%u rwin=%u jm=%u }",
        sp->hdr.serial,
        ntohl(ackinfo->rxMTU), ntohl(ackinfo->maxMTU),
        rwind, ntohl(ackinfo->jumbo_max));

 if (call->tx_winsize != rwind) {
  if (rwind > RXRPC_RXTX_BUFF_SIZE - 1)
   rwind = RXRPC_RXTX_BUFF_SIZE - 1;
  if (rwind > call->tx_winsize)
   wake = 1;
  trace_rxrpc_rx_rwind_change(call, sp->hdr.serial,
         ntohl(ackinfo->rwind), wake);
  call->tx_winsize = rwind;
 }

 if (call->cong_ssthresh > rwind)
  call->cong_ssthresh = rwind;

 mtu = min(ntohl(ackinfo->rxMTU), ntohl(ackinfo->maxMTU));

 peer = call->peer;
 if (mtu < peer->maxdata) {
  spin_lock_bh(&peer->lock);
  peer->maxdata = mtu;
  peer->mtu = mtu + peer->hdrsize;
  spin_unlock_bh(&peer->lock);
  _net("Net MTU %u (maxdata %u)", peer->mtu, peer->maxdata);
 }

 if (wake)
  wake_up(&call->waitq);
}
