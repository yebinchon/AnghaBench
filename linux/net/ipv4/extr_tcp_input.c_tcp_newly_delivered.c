
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcp_sock {int delivered_ce; scalar_t__ delivered; } ;
struct sock {int dummy; } ;
struct net {int dummy; } ;


 int FLAG_ECE ;
 int LINUX_MIB_TCPDELIVERED ;
 int LINUX_MIB_TCPDELIVEREDCE ;
 int NET_ADD_STATS (struct net const*,int ,scalar_t__) ;
 struct net* sock_net (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 tcp_newly_delivered(struct sock *sk, u32 prior_delivered, int flag)
{
 const struct net *net = sock_net(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 u32 delivered;

 delivered = tp->delivered - prior_delivered;
 NET_ADD_STATS(net, LINUX_MIB_TCPDELIVERED, delivered);
 if (flag & FLAG_ECE) {
  tp->delivered_ce += delivered;
  NET_ADD_STATS(net, LINUX_MIB_TCPDELIVEREDCE, delivered);
 }
 return delivered;
}
