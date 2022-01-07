
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct htcp {scalar_t__ undo_last_cong; int undo_old_maxB; int old_maxB; int undo_maxRTT; int maxRTT; scalar_t__ last_cong; } ;


 struct htcp* inet_csk_ca (struct sock*) ;
 int tcp_reno_undo_cwnd (struct sock*) ;

__attribute__((used)) static u32 htcp_cwnd_undo(struct sock *sk)
{
 struct htcp *ca = inet_csk_ca(sk);

 if (ca->undo_last_cong) {
  ca->last_cong = ca->undo_last_cong;
  ca->maxRTT = ca->undo_maxRTT;
  ca->old_maxB = ca->undo_old_maxB;
  ca->undo_last_cong = 0;
 }

 return tcp_reno_undo_cwnd(sk);
}
