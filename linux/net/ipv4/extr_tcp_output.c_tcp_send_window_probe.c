
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct TYPE_3__ {scalar_t__ rcv_nxt; scalar_t__ snd_wl1; } ;


 int LINUX_MIB_TCPWINPROBE ;
 scalar_t__ TCP_ESTABLISHED ;
 int tcp_mstamp_refresh (TYPE_1__*) ;
 TYPE_1__* tcp_sk (struct sock*) ;
 int tcp_xmit_probe_skb (struct sock*,int ,int ) ;

void tcp_send_window_probe(struct sock *sk)
{
 if (sk->sk_state == TCP_ESTABLISHED) {
  tcp_sk(sk)->snd_wl1 = tcp_sk(sk)->rcv_nxt - 1;
  tcp_mstamp_refresh(tcp_sk(sk));
  tcp_xmit_probe_skb(sk, 0, LINUX_MIB_TCPWINPROBE);
 }
}
