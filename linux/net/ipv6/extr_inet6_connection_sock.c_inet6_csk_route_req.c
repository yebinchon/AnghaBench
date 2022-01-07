
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sock {int sk_uid; } ;
struct request_sock {int dummy; } ;
struct ipv6_pinfo {int opt; } ;
struct inet_request_sock {int ir_num; int ir_rmt_port; int ir_mark; int ir_iif; int ir_v6_loc_addr; int ir_v6_rmt_addr; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int flowi6_uid; int fl6_sport; int fl6_dport; int flowi6_mark; int flowi6_oif; int saddr; int daddr; int flowi6_proto; } ;
struct dst_entry {int dummy; } ;


 scalar_t__ IS_ERR (struct dst_entry*) ;
 struct in6_addr* fl6_update_dst (struct flowi6*,int ,struct in6_addr*) ;
 int flowi6_to_flowi (struct flowi6*) ;
 int htons (int ) ;
 struct ipv6_pinfo* inet6_sk (struct sock const*) ;
 struct inet_request_sock* inet_rsk (struct request_sock const*) ;
 struct dst_entry* ip6_dst_lookup_flow (struct sock const*,struct flowi6*,struct in6_addr*) ;
 int memset (struct flowi6*,int ,int) ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_req_classify_flow (struct request_sock const*,int ) ;

struct dst_entry *inet6_csk_route_req(const struct sock *sk,
          struct flowi6 *fl6,
          const struct request_sock *req,
          u8 proto)
{
 struct inet_request_sock *ireq = inet_rsk(req);
 const struct ipv6_pinfo *np = inet6_sk(sk);
 struct in6_addr *final_p, final;
 struct dst_entry *dst;

 memset(fl6, 0, sizeof(*fl6));
 fl6->flowi6_proto = proto;
 fl6->daddr = ireq->ir_v6_rmt_addr;
 rcu_read_lock();
 final_p = fl6_update_dst(fl6, rcu_dereference(np->opt), &final);
 rcu_read_unlock();
 fl6->saddr = ireq->ir_v6_loc_addr;
 fl6->flowi6_oif = ireq->ir_iif;
 fl6->flowi6_mark = ireq->ir_mark;
 fl6->fl6_dport = ireq->ir_rmt_port;
 fl6->fl6_sport = htons(ireq->ir_num);
 fl6->flowi6_uid = sk->sk_uid;
 security_req_classify_flow(req, flowi6_to_flowi(fl6));

 dst = ip6_dst_lookup_flow(sk, fl6, final_p);
 if (IS_ERR(dst))
  return ((void*)0);

 return dst;
}
