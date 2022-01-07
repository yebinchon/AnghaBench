
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int user_mss; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct tcp_request_sock_ops {int (* send_synack ) (struct sock*,struct dst_entry*,struct flowi*,struct request_sock*,struct tcp_fastopen_cookie*,int ) ;scalar_t__ (* init_seq ) (struct sk_buff*) ;struct dst_entry* (* route_req ) (struct sock*,struct flowi*,struct request_sock*) ;scalar_t__ (* init_ts_off ) (struct net*,struct sk_buff*) ;int (* init_req ) (struct request_sock*,struct sock*,struct sk_buff*) ;int mss_clamp; } ;
struct tcp_options_received {scalar_t__ tstamp_ok; scalar_t__ saw_tstamp; scalar_t__ smc_ok; int user_mss; int mss_clamp; } ;
struct tcp_fastopen_cookie {int len; } ;
struct sock {int (* sk_data_ready ) (struct sock*) ;} ;
struct sk_buff {int dummy; } ;
struct request_sock_ops {int family; int slab_name; } ;
struct request_sock {scalar_t__ cookie_ts; int mss; } ;
struct TYPE_9__ {int sysctl_tcp_syncookies; int sysctl_max_syn_backlog; } ;
struct net {TYPE_2__ ipv4; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
typedef scalar_t__ __u32 ;
struct TYPE_14__ {scalar_t__ tcp_tw_isn; } ;
struct TYPE_13__ {scalar_t__ ecn_ok; int ir_iif; int no_srccheck; } ;
struct TYPE_12__ {int transparent; } ;
struct TYPE_11__ {int source; } ;
struct TYPE_10__ {int tfo_listener; int txhash; scalar_t__ snt_isn; scalar_t__ ts_off; struct tcp_request_sock_ops const* af_specific; } ;


 int CONFIG_SMC ;
 scalar_t__ IS_ENABLED (int ) ;
 int LINUX_MIB_LISTENOVERFLOWS ;
 int NET_INC_STATS (struct net*,int ) ;
 TYPE_7__* TCP_SKB_CB (struct sk_buff*) ;
 int TCP_SYNACK_COOKIE ;
 int TCP_SYNACK_FASTOPEN ;
 int TCP_SYNACK_NORMAL ;
 int __reqsk_free (struct request_sock*) ;
 int bh_unlock_sock (struct sock*) ;
 scalar_t__ cookie_init_sequence (struct tcp_request_sock_ops const*,struct sock*,struct sk_buff*,int *) ;
 int dst_release (struct dst_entry*) ;
 int inet_csk_reqsk_queue_add (struct sock*,struct request_sock*,struct sock*) ;
 int inet_csk_reqsk_queue_hash_add (struct sock*,struct request_sock*,int ) ;
 scalar_t__ inet_csk_reqsk_queue_is_full (struct sock*) ;
 int inet_csk_reqsk_queue_len (struct sock*) ;
 struct request_sock* inet_reqsk_alloc (struct request_sock_ops*,struct sock*,int) ;
 int inet_request_bound_dev_if (struct sock*,struct sk_buff*) ;
 TYPE_6__* inet_rsk (struct request_sock*) ;
 TYPE_5__* inet_sk (struct sock*) ;
 int net_tx_rndhash () ;
 int ntohs (int ) ;
 int pr_drop_req (struct request_sock*,int ,int ) ;
 int req_to_sk (struct request_sock*) ;
 int reqsk_fastopen_remove (struct sock*,struct request_sock*,int) ;
 int reqsk_free (struct request_sock*) ;
 int reqsk_put (struct request_sock*) ;
 scalar_t__ security_inet_conn_request (struct sock*,struct sk_buff*,struct request_sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int sk_rx_queue_set (int ,struct sk_buff*) ;
 struct net* sock_net (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct request_sock*,struct sock*,struct sk_buff*) ;
 scalar_t__ stub2 (struct net*,struct sk_buff*) ;
 struct dst_entry* stub3 (struct sock*,struct flowi*,struct request_sock*) ;
 scalar_t__ stub4 (struct sk_buff*) ;
 int stub5 (struct sock*,struct dst_entry*,struct flowi*,struct request_sock*,struct tcp_fastopen_cookie*,int ) ;
 int stub6 (struct sock*) ;
 int stub7 (struct sock*,struct dst_entry*,struct flowi*,struct request_sock*,struct tcp_fastopen_cookie*,int ) ;
 int tcp_clear_options (struct tcp_options_received*) ;
 int tcp_ecn_create_request (struct request_sock*,struct sk_buff*,struct sock*,struct dst_entry*) ;
 TYPE_4__* tcp_hdr (struct sk_buff*) ;
 int tcp_listendrop (struct sock*) ;
 int tcp_openreq_init (struct request_sock*,struct tcp_options_received*,struct sk_buff*,struct sock*) ;
 int tcp_openreq_init_rwin (struct request_sock*,struct sock*,struct dst_entry*) ;
 int tcp_parse_options (struct net*,struct sk_buff*,struct tcp_options_received*,int ,struct tcp_fastopen_cookie*) ;
 int tcp_peer_is_proven (struct request_sock*,struct dst_entry*) ;
 int tcp_reqsk_record_syn (struct sock*,struct request_sock*,struct sk_buff*) ;
 TYPE_3__* tcp_rsk (struct request_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_syn_flood_action (struct sock*,int ) ;
 int tcp_timeout_init (struct sock*) ;
 struct sock* tcp_try_fastopen (struct sock*,struct sk_buff*,struct request_sock*,struct tcp_fastopen_cookie*,struct dst_entry*) ;

int tcp_conn_request(struct request_sock_ops *rsk_ops,
       const struct tcp_request_sock_ops *af_ops,
       struct sock *sk, struct sk_buff *skb)
{
 struct tcp_fastopen_cookie foc = { .len = -1 };
 __u32 isn = TCP_SKB_CB(skb)->tcp_tw_isn;
 struct tcp_options_received tmp_opt;
 struct tcp_sock *tp = tcp_sk(sk);
 struct net *net = sock_net(sk);
 struct sock *fastopen_sk = ((void*)0);
 struct request_sock *req;
 bool want_cookie = 0;
 struct dst_entry *dst;
 struct flowi fl;





 if ((net->ipv4.sysctl_tcp_syncookies == 2 ||
      inet_csk_reqsk_queue_is_full(sk)) && !isn) {
  want_cookie = tcp_syn_flood_action(sk, rsk_ops->slab_name);
  if (!want_cookie)
   goto drop;
 }

 if (sk_acceptq_is_full(sk)) {
  NET_INC_STATS(sock_net(sk), LINUX_MIB_LISTENOVERFLOWS);
  goto drop;
 }

 req = inet_reqsk_alloc(rsk_ops, sk, !want_cookie);
 if (!req)
  goto drop;

 tcp_rsk(req)->af_specific = af_ops;
 tcp_rsk(req)->ts_off = 0;

 tcp_clear_options(&tmp_opt);
 tmp_opt.mss_clamp = af_ops->mss_clamp;
 tmp_opt.user_mss = tp->rx_opt.user_mss;
 tcp_parse_options(sock_net(sk), skb, &tmp_opt, 0,
     want_cookie ? ((void*)0) : &foc);

 if (want_cookie && !tmp_opt.saw_tstamp)
  tcp_clear_options(&tmp_opt);

 if (IS_ENABLED(CONFIG_SMC) && want_cookie)
  tmp_opt.smc_ok = 0;

 tmp_opt.tstamp_ok = tmp_opt.saw_tstamp;
 tcp_openreq_init(req, &tmp_opt, skb, sk);
 inet_rsk(req)->no_srccheck = inet_sk(sk)->transparent;


 inet_rsk(req)->ir_iif = inet_request_bound_dev_if(sk, skb);

 af_ops->init_req(req, sk, skb);

 if (security_inet_conn_request(sk, skb, req))
  goto drop_and_free;

 if (tmp_opt.tstamp_ok)
  tcp_rsk(req)->ts_off = af_ops->init_ts_off(net, skb);

 dst = af_ops->route_req(sk, &fl, req);
 if (!dst)
  goto drop_and_free;

 if (!want_cookie && !isn) {

  if (!net->ipv4.sysctl_tcp_syncookies &&
      (net->ipv4.sysctl_max_syn_backlog - inet_csk_reqsk_queue_len(sk) <
       (net->ipv4.sysctl_max_syn_backlog >> 2)) &&
      !tcp_peer_is_proven(req, dst)) {







   pr_drop_req(req, ntohs(tcp_hdr(skb)->source),
        rsk_ops->family);
   goto drop_and_release;
  }

  isn = af_ops->init_seq(skb);
 }

 tcp_ecn_create_request(req, skb, sk, dst);

 if (want_cookie) {
  isn = cookie_init_sequence(af_ops, sk, skb, &req->mss);
  req->cookie_ts = tmp_opt.tstamp_ok;
  if (!tmp_opt.tstamp_ok)
   inet_rsk(req)->ecn_ok = 0;
 }

 tcp_rsk(req)->snt_isn = isn;
 tcp_rsk(req)->txhash = net_tx_rndhash();
 tcp_openreq_init_rwin(req, sk, dst);
 sk_rx_queue_set(req_to_sk(req), skb);
 if (!want_cookie) {
  tcp_reqsk_record_syn(sk, req, skb);
  fastopen_sk = tcp_try_fastopen(sk, skb, req, &foc, dst);
 }
 if (fastopen_sk) {
  af_ops->send_synack(fastopen_sk, dst, &fl, req,
        &foc, TCP_SYNACK_FASTOPEN);

  if (!inet_csk_reqsk_queue_add(sk, req, fastopen_sk)) {
   reqsk_fastopen_remove(fastopen_sk, req, 0);
   bh_unlock_sock(fastopen_sk);
   sock_put(fastopen_sk);
   goto drop_and_free;
  }
  sk->sk_data_ready(sk);
  bh_unlock_sock(fastopen_sk);
  sock_put(fastopen_sk);
 } else {
  tcp_rsk(req)->tfo_listener = 0;
  if (!want_cookie)
   inet_csk_reqsk_queue_hash_add(sk, req,
    tcp_timeout_init((struct sock *)req));
  af_ops->send_synack(sk, dst, &fl, req, &foc,
        !want_cookie ? TCP_SYNACK_NORMAL :
         TCP_SYNACK_COOKIE);
  if (want_cookie) {
   reqsk_free(req);
   return 0;
  }
 }
 reqsk_put(req);
 return 0;

drop_and_release:
 dst_release(dst);
drop_and_free:
 __reqsk_free(req);
drop:
 tcp_listendrop(sk);
 return 0;
}
