
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct westwood {int bk; } ;
struct sock {int dummy; } ;


 int CA_ACK_SLOWPATH ;
 struct westwood* inet_csk_ca (struct sock*) ;
 int update_rtt_min (struct westwood*) ;
 scalar_t__ westwood_acked_count (struct sock*) ;
 int westwood_fast_bw (struct sock*) ;
 int westwood_update_window (struct sock*) ;

__attribute__((used)) static void tcp_westwood_ack(struct sock *sk, u32 ack_flags)
{
 if (ack_flags & CA_ACK_SLOWPATH) {
  struct westwood *w = inet_csk_ca(sk);

  westwood_update_window(sk);
  w->bk += westwood_acked_count(sk);

  update_rtt_min(w);
  return;
 }

 westwood_fast_bw(sk);
}
