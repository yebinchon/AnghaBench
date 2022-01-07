
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sock {int sk_bound_dev_if; int sk_protocol; int sk_mark; } ;
struct net {int dummy; } ;
struct iphdr {int saddr; int daddr; } ;
struct inet_sock {scalar_t__ hdrincl; } ;
struct flowi4 {int dummy; } ;


 int IPPROTO_RAW ;
 int RT_CONN_FLAGS (struct sock const*) ;
 int RT_SCOPE_UNIVERSE ;
 int flowi4_init_output (struct flowi4*,int,int ,int ,int ,int ,int,int ,int ,int ,int ,int ) ;
 struct inet_sock* inet_sk (struct sock const*) ;
 int sock_net_uid (struct net const*,struct sock const*) ;

__attribute__((used)) static void __build_flow_key(const struct net *net, struct flowi4 *fl4,
        const struct sock *sk,
        const struct iphdr *iph,
        int oif, u8 tos,
        u8 prot, u32 mark, int flow_flags)
{
 if (sk) {
  const struct inet_sock *inet = inet_sk(sk);

  oif = sk->sk_bound_dev_if;
  mark = sk->sk_mark;
  tos = RT_CONN_FLAGS(sk);
  prot = inet->hdrincl ? IPPROTO_RAW : sk->sk_protocol;
 }
 flowi4_init_output(fl4, oif, mark, tos,
      RT_SCOPE_UNIVERSE, prot,
      flow_flags,
      iph->daddr, iph->saddr, 0, 0,
      sock_net_uid(net, sk));
}
