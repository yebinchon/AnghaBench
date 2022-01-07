
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_uid; int sk_mark; int sk_bound_dev_if; int sk_v6_daddr; int sk_protocol; } ;
struct TYPE_2__ {int ipi6_ifindex; } ;
struct ipv6_pinfo {int mcast_oif; TYPE_1__ sticky_pktinfo; int flow_label; int saddr; } ;
struct inet_sock {int inet_sport; int inet_dport; } ;
struct flowi6 {int flowi6_oif; int daddr; int flowi6_uid; int flowlabel; int fl6_sport; int fl6_dport; int flowi6_mark; int saddr; int flowi6_proto; } ;


 int flowi6_to_flowi (struct flowi6*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ipv6_addr_is_multicast (int *) ;
 int memset (struct flowi6*,int ,int) ;
 int security_sk_classify_flow (struct sock*,int ) ;

__attribute__((used)) static void ip6_datagram_flow_key_init(struct flowi6 *fl6, struct sock *sk)
{
 struct inet_sock *inet = inet_sk(sk);
 struct ipv6_pinfo *np = inet6_sk(sk);

 memset(fl6, 0, sizeof(*fl6));
 fl6->flowi6_proto = sk->sk_protocol;
 fl6->daddr = sk->sk_v6_daddr;
 fl6->saddr = np->saddr;
 fl6->flowi6_oif = sk->sk_bound_dev_if;
 fl6->flowi6_mark = sk->sk_mark;
 fl6->fl6_dport = inet->inet_dport;
 fl6->fl6_sport = inet->inet_sport;
 fl6->flowlabel = np->flow_label;
 fl6->flowi6_uid = sk->sk_uid;

 if (!fl6->flowi6_oif)
  fl6->flowi6_oif = np->sticky_pktinfo.ipi6_ifindex;

 if (!fl6->flowi6_oif && ipv6_addr_is_multicast(&fl6->daddr))
  fl6->flowi6_oif = np->mcast_oif;

 security_sk_classify_flow(sk, flowi6_to_flowi(fl6));
}
