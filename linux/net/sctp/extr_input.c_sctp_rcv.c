
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union sctp_addr {int dummy; } sctp_addr ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ len; int csum_valid; int dev; } ;
struct sctphdr {int dummy; } ;
struct sctp_transport {int dummy; } ;
struct sctp_ep_common {int inqueue; struct sock* sk; } ;
struct sctp_endpoint {struct sctp_ep_common base; } ;
struct sctp_chunkhdr {int dummy; } ;
struct sctp_chunk {struct sctp_ep_common* rcvr; struct sctp_transport* transport; int sctp_hdr; } ;
struct sctp_association {struct sctp_ep_common base; } ;
struct sctp_af {scalar_t__ (* skb_iif ) (struct sk_buff*) ;int (* addr_valid ) (union sctp_addr*,int *,struct sk_buff*) ;int (* from_skb ) (union sctp_addr*,struct sk_buff*,int) ;} ;
struct TYPE_5__ {struct sock* ctl_sock; } ;
struct net {TYPE_1__ sctp; } ;
struct TYPE_8__ {struct sctp_chunk* chunk; struct sctp_af* af; } ;
struct TYPE_7__ {int version; } ;
struct TYPE_6__ {struct sctp_endpoint* ep; } ;


 int GFP_ATOMIC ;
 scalar_t__ PACKET_HOST ;
 TYPE_4__* SCTP_INPUT_CB (struct sk_buff*) ;
 int SCTP_MIB_INSCTPPACKS ;
 int SCTP_MIB_IN_PKT_BACKLOG ;
 int SCTP_MIB_IN_PKT_DISCARDS ;
 int SCTP_MIB_IN_PKT_SOFTIRQ ;
 int SCTP_MIB_OUTOFBLUES ;
 int XFRM_POLICY_IN ;
 int __SCTP_INC_STATS (struct net*,int ) ;
 struct sctp_association* __sctp_rcv_lookup (struct net*,struct sk_buff*,union sctp_addr*,union sctp_addr*,struct sctp_transport**) ;
 struct sctp_endpoint* __sctp_rcv_lookup_endpoint (struct net*,struct sk_buff*,union sctp_addr*,union sctp_addr*) ;
 int __skb_decr_checksum_unnecessary (struct sk_buff*) ;
 int __skb_pull (struct sk_buff*,int) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct net* dev_net (int ) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int ipver2af (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int nf_reset_ct (struct sk_buff*) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ sctp_add_backlog (struct sock*,struct sk_buff*) ;
 int sctp_checksum_disable ;
 int sctp_chunk_free (struct sctp_chunk*) ;
 struct sctp_chunk* sctp_chunkify (struct sk_buff*,struct sctp_association*,struct sock*,int ) ;
 int sctp_endpoint_hold (struct sctp_endpoint*) ;
 int sctp_endpoint_put (struct sctp_endpoint*) ;
 struct sctp_af* sctp_get_af_specific (int) ;
 int sctp_hdr (struct sk_buff*) ;
 int sctp_init_addrs (struct sctp_chunk*,union sctp_addr*,union sctp_addr*) ;
 int sctp_inq_push (int *,struct sctp_chunk*) ;
 int sctp_newsk_ready (struct sock*) ;
 scalar_t__ sctp_rcv_checksum (struct net*,struct sk_buff*) ;
 scalar_t__ sctp_rcv_ootb (struct sk_buff*) ;
 TYPE_2__* sctp_sk (struct sock*) ;
 int sctp_transport_put (struct sctp_transport*) ;
 scalar_t__ sk_filter (struct sock*,struct sk_buff*) ;
 scalar_t__ skb_csum_unnecessary (struct sk_buff*) ;
 scalar_t__ skb_is_gso (struct sk_buff*) ;
 scalar_t__ skb_is_gso_sctp (struct sk_buff*) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int stub1 (union sctp_addr*,struct sk_buff*,int) ;
 int stub2 (union sctp_addr*,struct sk_buff*,int) ;
 int stub3 (union sctp_addr*,int *,struct sk_buff*) ;
 int stub4 (union sctp_addr*,int *,struct sk_buff*) ;
 scalar_t__ stub5 (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;
 int xfrm_policy_check (struct sock*,int ,struct sk_buff*,int) ;

int sctp_rcv(struct sk_buff *skb)
{
 struct sock *sk;
 struct sctp_association *asoc;
 struct sctp_endpoint *ep = ((void*)0);
 struct sctp_ep_common *rcvr;
 struct sctp_transport *transport = ((void*)0);
 struct sctp_chunk *chunk;
 union sctp_addr src;
 union sctp_addr dest;
 int family;
 struct sctp_af *af;
 struct net *net = dev_net(skb->dev);
 bool is_gso = skb_is_gso(skb) && skb_is_gso_sctp(skb);

 if (skb->pkt_type != PACKET_HOST)
  goto discard_it;

 __SCTP_INC_STATS(net, SCTP_MIB_INSCTPPACKS);




 if (skb->len < sizeof(struct sctphdr) + sizeof(struct sctp_chunkhdr) +
         skb_transport_offset(skb))
  goto discard_it;





 if ((!is_gso && skb_linearize(skb)) ||
     !pskb_may_pull(skb, sizeof(struct sctphdr)))
  goto discard_it;


 __skb_pull(skb, skb_transport_offset(skb));

 skb->csum_valid = 0;
 if (skb_csum_unnecessary(skb))
  __skb_decr_checksum_unnecessary(skb);
 else if (!sctp_checksum_disable &&
   !is_gso &&
   sctp_rcv_checksum(net, skb) < 0)
  goto discard_it;
 skb->csum_valid = 1;

 __skb_pull(skb, sizeof(struct sctphdr));

 family = ipver2af(ip_hdr(skb)->version);
 af = sctp_get_af_specific(family);
 if (unlikely(!af))
  goto discard_it;
 SCTP_INPUT_CB(skb)->af = af;


 af->from_skb(&src, skb, 1);
 af->from_skb(&dest, skb, 0);
 if (!af->addr_valid(&src, ((void*)0), skb) ||
     !af->addr_valid(&dest, ((void*)0), skb))
  goto discard_it;

 asoc = __sctp_rcv_lookup(net, skb, &src, &dest, &transport);

 if (!asoc)
  ep = __sctp_rcv_lookup_endpoint(net, skb, &dest, &src);


 rcvr = asoc ? &asoc->base : &ep->base;
 sk = rcvr->sk;





 if (sk->sk_bound_dev_if && (sk->sk_bound_dev_if != af->skb_iif(skb))) {
  if (transport) {
   sctp_transport_put(transport);
   asoc = ((void*)0);
   transport = ((void*)0);
  } else {
   sctp_endpoint_put(ep);
   ep = ((void*)0);
  }
  sk = net->sctp.ctl_sock;
  ep = sctp_sk(sk)->ep;
  sctp_endpoint_hold(ep);
  rcvr = &ep->base;
 }
 if (!asoc) {
  if (sctp_rcv_ootb(skb)) {
   __SCTP_INC_STATS(net, SCTP_MIB_OUTOFBLUES);
   goto discard_release;
  }
 }

 if (!xfrm_policy_check(sk, XFRM_POLICY_IN, skb, family))
  goto discard_release;
 nf_reset_ct(skb);

 if (sk_filter(sk, skb))
  goto discard_release;


 chunk = sctp_chunkify(skb, asoc, sk, GFP_ATOMIC);
 if (!chunk)
  goto discard_release;
 SCTP_INPUT_CB(skb)->chunk = chunk;


 chunk->rcvr = rcvr;


 chunk->sctp_hdr = sctp_hdr(skb);


 sctp_init_addrs(chunk, &src, &dest);


 chunk->transport = transport;





 bh_lock_sock(sk);

 if (sk != rcvr->sk) {







  bh_unlock_sock(sk);
  sk = rcvr->sk;
  bh_lock_sock(sk);
 }

 if (sock_owned_by_user(sk) || !sctp_newsk_ready(sk)) {
  if (sctp_add_backlog(sk, skb)) {
   bh_unlock_sock(sk);
   sctp_chunk_free(chunk);
   skb = ((void*)0);
   goto discard_release;
  }
  __SCTP_INC_STATS(net, SCTP_MIB_IN_PKT_BACKLOG);
 } else {
  __SCTP_INC_STATS(net, SCTP_MIB_IN_PKT_SOFTIRQ);
  sctp_inq_push(&chunk->rcvr->inqueue, chunk);
 }

 bh_unlock_sock(sk);


 if (transport)
  sctp_transport_put(transport);
 else
  sctp_endpoint_put(ep);

 return 0;

discard_it:
 __SCTP_INC_STATS(net, SCTP_MIB_IN_PKT_DISCARDS);
 kfree_skb(skb);
 return 0;

discard_release:

 if (transport)
  sctp_transport_put(transport);
 else
  sctp_endpoint_put(ep);

 goto discard_it;
}
