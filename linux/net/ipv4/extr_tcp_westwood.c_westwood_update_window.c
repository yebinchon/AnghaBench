
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct westwood {scalar_t__ rtt_win_sx; scalar_t__ bk; scalar_t__ rtt; scalar_t__ first_ack; int snd_una; } ;
struct sock {int dummy; } ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int snd_una; } ;


 int TCP_WESTWOOD_RTT_MIN ;
 struct westwood* inet_csk_ca (struct sock*) ;
 scalar_t__ max_t (int ,scalar_t__,int ) ;
 scalar_t__ tcp_jiffies32 ;
 TYPE_1__* tcp_sk (struct sock*) ;
 int u32 ;
 int westwood_filter (struct westwood*,scalar_t__) ;

__attribute__((used)) static void westwood_update_window(struct sock *sk)
{
 struct westwood *w = inet_csk_ca(sk);
 s32 delta = tcp_jiffies32 - w->rtt_win_sx;





 if (w->first_ack) {
  w->snd_una = tcp_sk(sk)->snd_una;
  w->first_ack = 0;
 }
 if (w->rtt && delta > max_t(u32, w->rtt, TCP_WESTWOOD_RTT_MIN)) {
  westwood_filter(w, delta);

  w->bk = 0;
  w->rtt_win_sx = tcp_jiffies32;
 }
}
