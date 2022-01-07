
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_rcv_saddr; scalar_t__ sk_family; int sk_incoming_cpu; int sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct inet_sock {scalar_t__ inet_daddr; scalar_t__ inet_dport; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {unsigned short udp_port_hash; } ;


 scalar_t__ PF_INET ;
 scalar_t__ READ_ONCE (int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 scalar_t__ ipv6_only_sock (struct sock*) ;
 int net_eq (int ,struct net*) ;
 scalar_t__ raw_smp_processor_id () ;
 int sock_net (struct sock*) ;
 TYPE_1__* udp_sk (struct sock*) ;
 int udp_sk_bound_dev_eq (struct net*,int ,int,int) ;

__attribute__((used)) static int compute_score(struct sock *sk, struct net *net,
    __be32 saddr, __be16 sport,
    __be32 daddr, unsigned short hnum,
    int dif, int sdif)
{
 int score;
 struct inet_sock *inet;
 bool dev_match;

 if (!net_eq(sock_net(sk), net) ||
     udp_sk(sk)->udp_port_hash != hnum ||
     ipv6_only_sock(sk))
  return -1;

 if (sk->sk_rcv_saddr != daddr)
  return -1;

 score = (sk->sk_family == PF_INET) ? 2 : 1;

 inet = inet_sk(sk);
 if (inet->inet_daddr) {
  if (inet->inet_daddr != saddr)
   return -1;
  score += 4;
 }

 if (inet->inet_dport) {
  if (inet->inet_dport != sport)
   return -1;
  score += 4;
 }

 dev_match = udp_sk_bound_dev_eq(net, sk->sk_bound_dev_if,
     dif, sdif);
 if (!dev_match)
  return -1;
 score += 4;

 if (READ_ONCE(sk->sk_incoming_cpu) == raw_smp_processor_id())
  score++;
 return score;
}
