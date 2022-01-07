
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; int sk_incoming_cpu; int sk_bound_dev_if; int sk_v6_rcv_saddr; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {unsigned short const inet_num; } ;


 scalar_t__ PF_INET6 ;
 scalar_t__ READ_ONCE (int ) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int inet_sk_bound_dev_eq (struct net*,int ,int const,int const) ;
 int ipv6_addr_equal (int *,struct in6_addr const*) ;
 scalar_t__ net_eq (int ,struct net*) ;
 scalar_t__ raw_smp_processor_id () ;
 int sock_net (struct sock*) ;

__attribute__((used)) static inline int compute_score(struct sock *sk, struct net *net,
    const unsigned short hnum,
    const struct in6_addr *daddr,
    const int dif, const int sdif, bool exact_dif)
{
 int score = -1;

 if (net_eq(sock_net(sk), net) && inet_sk(sk)->inet_num == hnum &&
     sk->sk_family == PF_INET6) {
  if (!ipv6_addr_equal(&sk->sk_v6_rcv_saddr, daddr))
   return -1;

  if (!inet_sk_bound_dev_eq(net, sk->sk_bound_dev_if, dif, sdif))
   return -1;

  score = 1;
  if (READ_ONCE(sk->sk_incoming_cpu) == raw_smp_processor_id())
   score++;
 }
 return score;
}
