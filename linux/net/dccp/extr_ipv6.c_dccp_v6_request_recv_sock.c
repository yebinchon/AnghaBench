
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef struct sock {int sk_route_caps; int sk_bound_dev_if; int sk_v6_rcv_saddr; int sk_v6_daddr; int sk_backlog_rcv; } const sock ;
struct sk_buff {scalar_t__ protocol; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {scalar_t__ opt_flen; scalar_t__ opt_nflen; } ;
struct TYPE_7__ {int all; } ;
struct ipv6_pinfo {int * pktoptions; int * opt; int mcast_hops; int mcast_oif; int * ipv6_fl_list; int * ipv6_ac_list; int * ipv6_mc_list; TYPE_2__ rxopt; int saddr; } ;
struct inet_sock {void* inet_rcv_saddr; void* inet_saddr; void* inet_daddr; int * inet_opt; int * pinet6; } ;
struct inet_request_sock {int * pktopts; struct ipv6_txoptions* ipv6_opt; int ir_iif; int ir_v6_loc_addr; int ir_v6_rmt_addr; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {TYPE_1__* dev; } ;
struct dccp6_sock {int inet6; } ;
struct TYPE_10__ {scalar_t__ icsk_ext_hdr_len; int icsk_pmtu_cookie; int * icsk_af_ops; } ;
struct TYPE_9__ {int ttl; } ;
struct TYPE_8__ {int hop_limit; } ;
struct TYPE_6__ {int features; } ;


 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int IPPROTO_DCCP ;
 int LINUX_MIB_LISTENDROPS ;
 int LINUX_MIB_LISTENOVERFLOWS ;
 void* LOOPBACK4_IPV6 ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_TSO ;
 int RCU_INIT_POINTER (int *,struct ipv6_txoptions*) ;
 int __NET_INC_STATS (int ,int ) ;
 scalar_t__ __inet_inherit_port (struct sock const*,struct sock const*) ;
 int consume_skb (int *) ;
 struct sock const* dccp_create_openreq_child (struct sock const*,struct request_sock*,struct sk_buff*) ;
 int dccp_done (struct sock const*) ;
 int dccp_ipv6_mapped ;
 int dccp_sync_mss (struct sock const*,int ) ;
 int dccp_v4_do_rcv ;
 struct sock const* dccp_v4_request_recv_sock (struct sock const*,struct sk_buff*,struct request_sock*,struct dst_entry*,struct request_sock*,int*) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 scalar_t__ htons (int ) ;
 struct dst_entry* inet6_csk_route_req (struct sock const*,struct flowi6*,struct request_sock*,int ) ;
 int inet6_iif (struct sk_buff*) ;
 void* inet6_sk (struct sock const*) ;
 TYPE_5__* inet_csk (struct sock const*) ;
 int inet_csk_prepare_forced_close (struct sock const*) ;
 int inet_ehash_nolisten (struct sock const*,int ) ;
 int inet_iif (struct sk_buff*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 struct inet_sock* inet_sk (struct sock const*) ;
 int ip6_dst_store (struct sock const*,struct dst_entry*,int *,int *) ;
 TYPE_4__* ip_hdr (struct sk_buff*) ;
 struct ipv6_txoptions* ipv6_dup_options (struct sock const*,struct ipv6_txoptions*) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 int memcpy (struct ipv6_pinfo*,struct ipv6_pinfo const*,int) ;
 struct ipv6_txoptions* rcu_dereference (int *) ;
 int req_to_sk (struct request_sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock const*) ;
 int * skb_clone (int *,int ) ;
 int skb_set_owner_r (int *,struct sock const*) ;
 int sock_net (struct sock const*) ;

__attribute__((used)) static struct sock *dccp_v6_request_recv_sock(const struct sock *sk,
           struct sk_buff *skb,
           struct request_sock *req,
           struct dst_entry *dst,
           struct request_sock *req_unhash,
           bool *own_req)
{
 struct inet_request_sock *ireq = inet_rsk(req);
 struct ipv6_pinfo *newnp;
 const struct ipv6_pinfo *np = inet6_sk(sk);
 struct ipv6_txoptions *opt;
 struct inet_sock *newinet;
 struct dccp6_sock *newdp6;
 struct sock *newsk;

 if (skb->protocol == htons(ETH_P_IP)) {



  newsk = dccp_v4_request_recv_sock(sk, skb, req, dst,
        req_unhash, own_req);
  if (newsk == ((void*)0))
   return ((void*)0);

  newdp6 = (struct dccp6_sock *)newsk;
  newinet = inet_sk(newsk);
  newinet->pinet6 = &newdp6->inet6;
  newnp = inet6_sk(newsk);

  memcpy(newnp, np, sizeof(struct ipv6_pinfo));

  newnp->saddr = newsk->sk_v6_rcv_saddr;

  inet_csk(newsk)->icsk_af_ops = &dccp_ipv6_mapped;
  newsk->sk_backlog_rcv = dccp_v4_do_rcv;
  newnp->pktoptions = ((void*)0);
  newnp->opt = ((void*)0);
  newnp->ipv6_mc_list = ((void*)0);
  newnp->ipv6_ac_list = ((void*)0);
  newnp->ipv6_fl_list = ((void*)0);
  newnp->mcast_oif = inet_iif(skb);
  newnp->mcast_hops = ip_hdr(skb)->ttl;
  dccp_sync_mss(newsk, inet_csk(newsk)->icsk_pmtu_cookie);

  return newsk;
 }


 if (sk_acceptq_is_full(sk))
  goto out_overflow;

 if (!dst) {
  struct flowi6 fl6;

  dst = inet6_csk_route_req(sk, &fl6, req, IPPROTO_DCCP);
  if (!dst)
   goto out;
 }

 newsk = dccp_create_openreq_child(sk, req, skb);
 if (newsk == ((void*)0))
  goto out_nonewsk;







 ip6_dst_store(newsk, dst, ((void*)0), ((void*)0));
 newsk->sk_route_caps = dst->dev->features & ~(NETIF_F_IP_CSUM |
            NETIF_F_TSO);
 newdp6 = (struct dccp6_sock *)newsk;
 newinet = inet_sk(newsk);
 newinet->pinet6 = &newdp6->inet6;
 newnp = inet6_sk(newsk);

 memcpy(newnp, np, sizeof(struct ipv6_pinfo));

 newsk->sk_v6_daddr = ireq->ir_v6_rmt_addr;
 newnp->saddr = ireq->ir_v6_loc_addr;
 newsk->sk_v6_rcv_saddr = ireq->ir_v6_loc_addr;
 newsk->sk_bound_dev_if = ireq->ir_iif;





 newinet->inet_opt = ((void*)0);


 newnp->rxopt.all = np->rxopt.all;

 newnp->ipv6_mc_list = ((void*)0);
 newnp->ipv6_ac_list = ((void*)0);
 newnp->ipv6_fl_list = ((void*)0);
 newnp->pktoptions = ((void*)0);
 newnp->opt = ((void*)0);
 newnp->mcast_oif = inet6_iif(skb);
 newnp->mcast_hops = ipv6_hdr(skb)->hop_limit;







 opt = ireq->ipv6_opt;
 if (!opt)
  opt = rcu_dereference(np->opt);
 if (opt) {
  opt = ipv6_dup_options(newsk, opt);
  RCU_INIT_POINTER(newnp->opt, opt);
 }
 inet_csk(newsk)->icsk_ext_hdr_len = 0;
 if (opt)
  inet_csk(newsk)->icsk_ext_hdr_len = opt->opt_nflen +
          opt->opt_flen;

 dccp_sync_mss(newsk, dst_mtu(dst));

 newinet->inet_daddr = newinet->inet_saddr = LOOPBACK4_IPV6;
 newinet->inet_rcv_saddr = LOOPBACK4_IPV6;

 if (__inet_inherit_port(sk, newsk) < 0) {
  inet_csk_prepare_forced_close(newsk);
  dccp_done(newsk);
  goto out;
 }
 *own_req = inet_ehash_nolisten(newsk, req_to_sk(req_unhash));

 if (*own_req && ireq->pktopts) {
  newnp->pktoptions = skb_clone(ireq->pktopts, GFP_ATOMIC);
  consume_skb(ireq->pktopts);
  ireq->pktopts = ((void*)0);
  if (newnp->pktoptions)
   skb_set_owner_r(newnp->pktoptions, newsk);
 }

 return newsk;

out_overflow:
 __NET_INC_STATS(sock_net(sk), LINUX_MIB_LISTENOVERFLOWS);
out_nonewsk:
 dst_release(dst);
out:
 __NET_INC_STATS(sock_net(sk), LINUX_MIB_LISTENDROPS);
 return ((void*)0);
}
