
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_uid; int sk_protocol; } ;
struct dst_entry {int dummy; } ;
struct rtable {struct dst_entry dst; scalar_t__ rt_uses_gateway; } ;
struct request_sock {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_strictroute; int faddr; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_1__ opt; } ;
struct inet_request_sock {int ir_num; int ir_rmt_port; int ir_loc_addr; int ir_rmt_addr; int ir_mark; int ir_iif; int ireq_opt; int ireq_net; } ;
struct flowi4 {int dummy; } ;


 int IPSTATS_MIB_OUTNOROUTES ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int RT_CONN_FLAGS (struct sock const*) ;
 int RT_SCOPE_UNIVERSE ;
 int __IP_INC_STATS (struct net*,int ) ;
 int flowi4_init_output (struct flowi4*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int flowi4_to_flowi (struct flowi4*) ;
 int htons (int ) ;
 struct inet_request_sock* inet_rsk (struct request_sock const*) ;
 int inet_sk_flowi_flags (struct sock const*) ;
 struct rtable* ip_route_output_flow (struct net*,struct flowi4*,struct sock const*) ;
 int ip_rt_put (struct rtable*) ;
 struct ip_options_rcu* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct net* read_pnet (int *) ;
 int security_req_classify_flow (struct request_sock const*,int ) ;

struct dst_entry *inet_csk_route_req(const struct sock *sk,
         struct flowi4 *fl4,
         const struct request_sock *req)
{
 const struct inet_request_sock *ireq = inet_rsk(req);
 struct net *net = read_pnet(&ireq->ireq_net);
 struct ip_options_rcu *opt;
 struct rtable *rt;

 rcu_read_lock();
 opt = rcu_dereference(ireq->ireq_opt);

 flowi4_init_output(fl4, ireq->ir_iif, ireq->ir_mark,
      RT_CONN_FLAGS(sk), RT_SCOPE_UNIVERSE,
      sk->sk_protocol, inet_sk_flowi_flags(sk),
      (opt && opt->opt.srr) ? opt->opt.faddr : ireq->ir_rmt_addr,
      ireq->ir_loc_addr, ireq->ir_rmt_port,
      htons(ireq->ir_num), sk->sk_uid);
 security_req_classify_flow(req, flowi4_to_flowi(fl4));
 rt = ip_route_output_flow(net, fl4, sk);
 if (IS_ERR(rt))
  goto no_route;
 if (opt && opt->opt.is_strictroute && rt->rt_uses_gateway)
  goto route_err;
 rcu_read_unlock();
 return &rt->dst;

route_err:
 ip_rt_put(rt);
no_route:
 rcu_read_unlock();
 __IP_INC_STATS(net, IPSTATS_MIB_OUTNOROUTES);
 return ((void*)0);
}
