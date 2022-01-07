
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_uid; int sk_mark; int sk_bound_dev_if; int sk_v6_daddr; int sk_protocol; } ;
struct ipv6_pinfo {int dst_cookie; int opt; int flow_label; int saddr; } ;
struct inet_sock {int inet_dport; int inet_sport; } ;
struct in6_addr {int dummy; } ;
struct flowi6 {int flowi6_uid; int fl6_dport; int fl6_sport; int flowi6_mark; int flowi6_oif; int flowlabel; int saddr; int daddr; int flowi6_proto; } ;
struct dst_entry {int dummy; } ;


 int IP6_ECN_flow_xmit (struct sock*,int ) ;
 int IS_ERR (struct dst_entry*) ;
 struct dst_entry* __inet6_csk_dst_check (struct sock*,int ) ;
 struct in6_addr* fl6_update_dst (struct flowi6*,int ,struct in6_addr*) ;
 int flowi6_to_flowi (struct flowi6*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct dst_entry* ip6_dst_lookup_flow (struct sock*,struct flowi6*,struct in6_addr*) ;
 int ip6_dst_store (struct sock*,struct dst_entry*,int *,int *) ;
 int memset (struct flowi6*,int ,int) ;
 int rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_sk_classify_flow (struct sock*,int ) ;

__attribute__((used)) static struct dst_entry *inet6_csk_route_socket(struct sock *sk,
      struct flowi6 *fl6)
{
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct in6_addr *final_p, final;
 struct dst_entry *dst;

 memset(fl6, 0, sizeof(*fl6));
 fl6->flowi6_proto = sk->sk_protocol;
 fl6->daddr = sk->sk_v6_daddr;
 fl6->saddr = np->saddr;
 fl6->flowlabel = np->flow_label;
 IP6_ECN_flow_xmit(sk, fl6->flowlabel);
 fl6->flowi6_oif = sk->sk_bound_dev_if;
 fl6->flowi6_mark = sk->sk_mark;
 fl6->fl6_sport = inet->inet_sport;
 fl6->fl6_dport = inet->inet_dport;
 fl6->flowi6_uid = sk->sk_uid;
 security_sk_classify_flow(sk, flowi6_to_flowi(fl6));

 rcu_read_lock();
 final_p = fl6_update_dst(fl6, rcu_dereference(np->opt), &final);
 rcu_read_unlock();

 dst = __inet6_csk_dst_check(sk, np->dst_cookie);
 if (!dst) {
  dst = ip6_dst_lookup_flow(sk, fl6, final_p);

  if (!IS_ERR(dst))
   ip6_dst_store(sk, dst, ((void*)0), ((void*)0));
 }
 return dst;
}
