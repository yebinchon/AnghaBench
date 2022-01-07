
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union tcp_md5_addr {int dummy; } tcp_md5_addr ;
struct tcp_sock {int advmss; int * af_specific; } ;
struct tcp_md5sig_key {int keylen; int key; } ;
typedef struct sock {int sk_v6_daddr; int sk_bound_dev_if; int sk_v6_rcv_saddr; int sk_gso_type; int sk_backlog_rcv; } const sock ;
struct sk_buff {scalar_t__ protocol; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {scalar_t__ opt_flen; scalar_t__ opt_nflen; } ;
struct TYPE_7__ {int all; } ;
struct ipv6_pinfo {int * pktoptions; int * opt; scalar_t__ flow_label; scalar_t__ repflow; scalar_t__ rcv_flowinfo; int mcast_hops; int mcast_oif; TYPE_1__ rxopt; int * ipv6_fl_list; int * ipv6_ac_list; int * ipv6_mc_list; int saddr; } ;
struct inet_sock {void* inet_rcv_saddr; void* inet_saddr; void* inet_daddr; int * inet_opt; void* pinet6; } ;
struct inet_request_sock {int * pktopts; struct ipv6_txoptions* ipv6_opt; int ir_iif; int ir_v6_loc_addr; int ir_v6_rmt_addr; } ;
struct flowi6 {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_10__ {scalar_t__ icsk_ext_hdr_len; int icsk_pmtu_cookie; int * icsk_af_ops; } ;
struct TYPE_9__ {int ttl; } ;
struct TYPE_8__ {int hop_limit; } ;


 int AF_INET6 ;
 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int IPPROTO_TCP ;
 int LINUX_MIB_LISTENOVERFLOWS ;
 void* LOOPBACK4_IPV6 ;
 int RCU_INIT_POINTER (int *,struct ipv6_txoptions*) ;
 int SKB_GSO_TCPV6 ;
 int __NET_INC_STATS (int ,int ) ;
 scalar_t__ __inet_inherit_port (struct sock const*,struct sock const*) ;
 int consume_skb (int *) ;
 int dst_metric_advmss (struct dst_entry*) ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 scalar_t__ htons (int ) ;
 struct dst_entry* inet6_csk_route_req (struct sock const*,struct flowi6*,struct request_sock*,int ) ;
 int inet6_sk_rx_dst_set (struct sock const*,struct sk_buff*) ;
 TYPE_6__* inet_csk (struct sock const*) ;
 int inet_csk_prepare_forced_close (struct sock const*) ;
 int inet_ehash_nolisten (struct sock const*,int ) ;
 int inet_iif (struct sk_buff*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 struct inet_sock* inet_sk (struct sock const*) ;
 int ip6_dst_store (struct sock const*,struct dst_entry*,int *,int *) ;
 scalar_t__ ip6_flowinfo (TYPE_2__*) ;
 scalar_t__ ip6_flowlabel (TYPE_2__*) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 struct ipv6_txoptions* ipv6_dup_options (struct sock const*,struct ipv6_txoptions*) ;
 TYPE_2__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_mapped ;
 int memcpy (struct ipv6_pinfo*,struct ipv6_pinfo const*,int) ;
 struct ipv6_txoptions* rcu_dereference (int *) ;
 int req_to_sk (struct request_sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock const*) ;
 int sk_gfp_mask (struct sock const*,int ) ;
 int * skb_clone (int *,int ) ;
 int skb_set_owner_r (int *,struct sock const*) ;
 int sock_net (struct sock const*) ;
 int tcp_ca_openreq_child (struct sock const*,struct dst_entry*) ;
 struct sock const* tcp_create_openreq_child (struct sock const*,struct request_sock*,struct sk_buff*) ;
 int tcp_done (struct sock const*) ;
 void* tcp_inet6_sk (struct sock const*) ;
 int tcp_initialize_rcv_mss (struct sock const*) ;
 int tcp_listendrop (struct sock const*) ;
 int tcp_md5_do_add (struct sock const*,union tcp_md5_addr*,int ,int,int ,int ,int ) ;
 int tcp_move_syn (struct tcp_sock*,struct request_sock*) ;
 int tcp_mss_clamp (struct tcp_sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;
 int tcp_sock_ipv6_mapped_specific ;
 int tcp_sync_mss (struct sock const*,int ) ;
 int tcp_v4_do_rcv ;
 struct sock const* tcp_v4_syn_recv_sock (struct sock const*,struct sk_buff*,struct request_sock*,struct dst_entry*,struct request_sock*,int*) ;
 int tcp_v6_iif (struct sk_buff*) ;
 struct tcp_md5sig_key* tcp_v6_md5_do_lookup (struct sock const*,int *) ;
 int tcp_v6_restore_cb (int *) ;

__attribute__((used)) static struct sock *tcp_v6_syn_recv_sock(const struct sock *sk, struct sk_buff *skb,
      struct request_sock *req,
      struct dst_entry *dst,
      struct request_sock *req_unhash,
      bool *own_req)
{
 struct inet_request_sock *ireq;
 struct ipv6_pinfo *newnp;
 const struct ipv6_pinfo *np = tcp_inet6_sk(sk);
 struct ipv6_txoptions *opt;
 struct inet_sock *newinet;
 struct tcp_sock *newtp;
 struct sock *newsk;



 struct flowi6 fl6;

 if (skb->protocol == htons(ETH_P_IP)) {




  newsk = tcp_v4_syn_recv_sock(sk, skb, req, dst,
          req_unhash, own_req);

  if (!newsk)
   return ((void*)0);

  inet_sk(newsk)->pinet6 = tcp_inet6_sk(newsk);

  newinet = inet_sk(newsk);
  newnp = tcp_inet6_sk(newsk);
  newtp = tcp_sk(newsk);

  memcpy(newnp, np, sizeof(struct ipv6_pinfo));

  newnp->saddr = newsk->sk_v6_rcv_saddr;

  inet_csk(newsk)->icsk_af_ops = &ipv6_mapped;
  newsk->sk_backlog_rcv = tcp_v4_do_rcv;




  newnp->ipv6_mc_list = ((void*)0);
  newnp->ipv6_ac_list = ((void*)0);
  newnp->ipv6_fl_list = ((void*)0);
  newnp->pktoptions = ((void*)0);
  newnp->opt = ((void*)0);
  newnp->mcast_oif = inet_iif(skb);
  newnp->mcast_hops = ip_hdr(skb)->ttl;
  newnp->rcv_flowinfo = 0;
  if (np->repflow)
   newnp->flow_label = 0;
  tcp_sync_mss(newsk, inet_csk(newsk)->icsk_pmtu_cookie);

  return newsk;
 }

 ireq = inet_rsk(req);

 if (sk_acceptq_is_full(sk))
  goto out_overflow;

 if (!dst) {
  dst = inet6_csk_route_req(sk, &fl6, req, IPPROTO_TCP);
  if (!dst)
   goto out;
 }

 newsk = tcp_create_openreq_child(sk, req, skb);
 if (!newsk)
  goto out_nonewsk;







 newsk->sk_gso_type = SKB_GSO_TCPV6;
 ip6_dst_store(newsk, dst, ((void*)0), ((void*)0));
 inet6_sk_rx_dst_set(newsk, skb);

 inet_sk(newsk)->pinet6 = tcp_inet6_sk(newsk);

 newtp = tcp_sk(newsk);
 newinet = inet_sk(newsk);
 newnp = tcp_inet6_sk(newsk);

 memcpy(newnp, np, sizeof(struct ipv6_pinfo));

 newsk->sk_v6_daddr = ireq->ir_v6_rmt_addr;
 newnp->saddr = ireq->ir_v6_loc_addr;
 newsk->sk_v6_rcv_saddr = ireq->ir_v6_loc_addr;
 newsk->sk_bound_dev_if = ireq->ir_iif;





 newinet->inet_opt = ((void*)0);
 newnp->ipv6_mc_list = ((void*)0);
 newnp->ipv6_ac_list = ((void*)0);
 newnp->ipv6_fl_list = ((void*)0);


 newnp->rxopt.all = np->rxopt.all;

 newnp->pktoptions = ((void*)0);
 newnp->opt = ((void*)0);
 newnp->mcast_oif = tcp_v6_iif(skb);
 newnp->mcast_hops = ipv6_hdr(skb)->hop_limit;
 newnp->rcv_flowinfo = ip6_flowinfo(ipv6_hdr(skb));
 if (np->repflow)
  newnp->flow_label = ip6_flowlabel(ipv6_hdr(skb));







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

 tcp_ca_openreq_child(newsk, dst);

 tcp_sync_mss(newsk, dst_mtu(dst));
 newtp->advmss = tcp_mss_clamp(tcp_sk(sk), dst_metric_advmss(dst));

 tcp_initialize_rcv_mss(newsk);

 newinet->inet_daddr = newinet->inet_saddr = LOOPBACK4_IPV6;
 newinet->inet_rcv_saddr = LOOPBACK4_IPV6;
 if (__inet_inherit_port(sk, newsk) < 0) {
  inet_csk_prepare_forced_close(newsk);
  tcp_done(newsk);
  goto out;
 }
 *own_req = inet_ehash_nolisten(newsk, req_to_sk(req_unhash));
 if (*own_req) {
  tcp_move_syn(newtp, req);


  if (ireq->pktopts) {
   newnp->pktoptions = skb_clone(ireq->pktopts,
            sk_gfp_mask(sk, GFP_ATOMIC));
   consume_skb(ireq->pktopts);
   ireq->pktopts = ((void*)0);
   if (newnp->pktoptions) {
    tcp_v6_restore_cb(newnp->pktoptions);
    skb_set_owner_r(newnp->pktoptions, newsk);
   }
  }
 }

 return newsk;

out_overflow:
 __NET_INC_STATS(sock_net(sk), LINUX_MIB_LISTENOVERFLOWS);
out_nonewsk:
 dst_release(dst);
out:
 tcp_listendrop(sk);
 return ((void*)0);
}
