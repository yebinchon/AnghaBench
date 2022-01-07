
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_fastopen_cookie {int dummy; } ;
struct sock {int sk_priority; int sk_mark; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct ipv6_txoptions {int dummy; } ;
struct ipv6_pinfo {int tclass; int opt; scalar_t__ repflow; } ;
struct inet_request_sock {struct ipv6_txoptions* ipv6_opt; scalar_t__ pktopts; int ir_v6_rmt_addr; int ir_v6_loc_addr; } ;
struct flowi6 {int flowlabel; int daddr; } ;
struct TYPE_2__ {struct flowi6 ip6; } ;
struct flowi {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;
typedef enum tcp_synack_type { ____Placeholder_tcp_synack_type } tcp_synack_type ;


 int ENOMEM ;
 int IPPROTO_TCP ;
 int __tcp_v6_send_check (struct sk_buff*,int *,int *) ;
 struct dst_entry* inet6_csk_route_req (struct sock const*,struct flowi6*,struct request_sock*,int ) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 int ip6_flowlabel (int ) ;
 int ip6_xmit (struct sock const*,struct sk_buff*,struct flowi6*,int ,struct ipv6_txoptions*,int ,int ) ;
 int ipv6_hdr (scalar_t__) ;
 int net_xmit_eval (int) ;
 struct ipv6_txoptions* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct ipv6_pinfo* tcp_inet6_sk (struct sock const*) ;
 struct sk_buff* tcp_make_synack (struct sock const*,struct dst_entry*,struct request_sock*,struct tcp_fastopen_cookie*,int) ;

__attribute__((used)) static int tcp_v6_send_synack(const struct sock *sk, struct dst_entry *dst,
         struct flowi *fl,
         struct request_sock *req,
         struct tcp_fastopen_cookie *foc,
         enum tcp_synack_type synack_type)
{
 struct inet_request_sock *ireq = inet_rsk(req);
 struct ipv6_pinfo *np = tcp_inet6_sk(sk);
 struct ipv6_txoptions *opt;
 struct flowi6 *fl6 = &fl->u.ip6;
 struct sk_buff *skb;
 int err = -ENOMEM;


 if (!dst && (dst = inet6_csk_route_req(sk, fl6, req,
            IPPROTO_TCP)) == ((void*)0))
  goto done;

 skb = tcp_make_synack(sk, dst, req, foc, synack_type);

 if (skb) {
  __tcp_v6_send_check(skb, &ireq->ir_v6_loc_addr,
        &ireq->ir_v6_rmt_addr);

  fl6->daddr = ireq->ir_v6_rmt_addr;
  if (np->repflow && ireq->pktopts)
   fl6->flowlabel = ip6_flowlabel(ipv6_hdr(ireq->pktopts));

  rcu_read_lock();
  opt = ireq->ipv6_opt;
  if (!opt)
   opt = rcu_dereference(np->opt);
  err = ip6_xmit(sk, skb, fl6, sk->sk_mark, opt, np->tclass,
          sk->sk_priority);
  rcu_read_unlock();
  err = net_xmit_eval(err);
 }

done:
 return err;
}
