
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tcp_sock {int snd_cwnd; int snd_cwnd_stamp; scalar_t__ snd_cwnd_used; int snd_ssthresh; } ;
struct sock {TYPE_1__* sk_socket; } ;
struct TYPE_4__ {scalar_t__ icsk_ca_state; } ;
struct TYPE_3__ {int flags; } ;


 int SOCK_NOSPACE ;
 scalar_t__ TCP_CA_Open ;
 int __sk_dst_get (struct sock*) ;
 TYPE_2__* inet_csk (struct sock*) ;
 int max (scalar_t__,int) ;
 int tcp_current_ssthresh (struct sock*) ;
 int tcp_init_cwnd (struct tcp_sock*,int ) ;
 int tcp_jiffies32 ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void tcp_cwnd_application_limited(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (inet_csk(sk)->icsk_ca_state == TCP_CA_Open &&
     sk->sk_socket && !test_bit(SOCK_NOSPACE, &sk->sk_socket->flags)) {

  u32 init_win = tcp_init_cwnd(tp, __sk_dst_get(sk));
  u32 win_used = max(tp->snd_cwnd_used, init_win);
  if (win_used < tp->snd_cwnd) {
   tp->snd_ssthresh = tcp_current_ssthresh(sk);
   tp->snd_cwnd = (tp->snd_cwnd + win_used) >> 1;
  }
  tp->snd_cwnd_used = 0;
 }
 tp->snd_cwnd_stamp = tcp_jiffies32;
}
