
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcp_sock {int rcv_ssthresh; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; int truesize; } ;
struct TYPE_5__ {int rcv_mss; } ;
struct TYPE_8__ {TYPE_1__ icsk_ack; } ;
struct TYPE_6__ {int * sysctl_tcp_rmem; } ;
struct TYPE_7__ {TYPE_2__ ipv4; } ;


 TYPE_4__* inet_csk (struct sock const*) ;
 TYPE_3__* sock_net (struct sock const*) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;
 int tcp_win_from_space (struct sock const*,int ) ;

__attribute__((used)) static int __tcp_grow_window(const struct sock *sk, const struct sk_buff *skb)
{
 struct tcp_sock *tp = tcp_sk(sk);

 int truesize = tcp_win_from_space(sk, skb->truesize) >> 1;
 int window = tcp_win_from_space(sk, sock_net(sk)->ipv4.sysctl_tcp_rmem[2]) >> 1;

 while (tp->rcv_ssthresh <= window) {
  if (truesize <= skb->len)
   return 2 * inet_csk(sk)->icsk_ack.rcv_mss;

  truesize >>= 1;
  window >>= 1;
 }
 return 0;
}
