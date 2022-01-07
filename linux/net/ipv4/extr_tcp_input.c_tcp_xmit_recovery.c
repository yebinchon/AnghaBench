
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {scalar_t__ frto; int high_seq; int snd_nxt; } ;
struct sock {scalar_t__ sk_state; } ;


 int REXMIT_NONE ;
 int TCP_NAGLE_OFF ;
 scalar_t__ TCP_SYN_SENT ;
 int __tcp_push_pending_frames (struct sock*,int ,int ) ;
 scalar_t__ after (int ,int ) ;
 int tcp_current_mss (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_xmit_retransmit_queue (struct sock*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void tcp_xmit_recovery(struct sock *sk, int rexmit)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (rexmit == REXMIT_NONE || sk->sk_state == TCP_SYN_SENT)
  return;

 if (unlikely(rexmit == 2)) {
  __tcp_push_pending_frames(sk, tcp_current_mss(sk),
       TCP_NAGLE_OFF);
  if (after(tp->snd_nxt, tp->high_seq))
   return;
  tp->frto = 0;
 }
 tcp_xmit_retransmit_queue(sk);
}
