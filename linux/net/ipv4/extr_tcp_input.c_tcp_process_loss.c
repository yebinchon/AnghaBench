
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int high_seq; int snd_nxt; scalar_t__ frto; int fastopen_rsk; int snd_una; } ;
struct sock {int dummy; } ;


 int FLAG_DATA_SACKED ;
 int FLAG_ORIG_SACK_ACKED ;
 int FLAG_SND_UNA_ADVANCED ;
 int REXMIT_LOST ;
 int REXMIT_NEW ;
 scalar_t__ after (int ,int ) ;
 int before (int ,int ) ;
 scalar_t__ rcu_access_pointer (int ) ;
 int tcp_add_reno_sack (struct sock*,int) ;
 scalar_t__ tcp_is_reno (struct tcp_sock*) ;
 int tcp_reset_reno_sack (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_try_undo_loss (struct sock*,int) ;
 int tcp_try_undo_recovery (struct sock*) ;
 int tcp_wnd_end (struct tcp_sock*) ;
 int tcp_write_queue_empty (struct sock*) ;

__attribute__((used)) static void tcp_process_loss(struct sock *sk, int flag, int num_dupack,
        int *rexmit)
{
 struct tcp_sock *tp = tcp_sk(sk);
 bool recovered = !before(tp->snd_una, tp->high_seq);

 if ((flag & FLAG_SND_UNA_ADVANCED || rcu_access_pointer(tp->fastopen_rsk)) &&
     tcp_try_undo_loss(sk, 0))
  return;

 if (tp->frto) {



  if ((flag & FLAG_ORIG_SACK_ACKED) &&
      tcp_try_undo_loss(sk, 1))
   return;

  if (after(tp->snd_nxt, tp->high_seq)) {
   if (flag & FLAG_DATA_SACKED || num_dupack)
    tp->frto = 0;
  } else if (flag & FLAG_SND_UNA_ADVANCED && !recovered) {
   tp->high_seq = tp->snd_nxt;




   if (!tcp_write_queue_empty(sk) &&
       after(tcp_wnd_end(tp), tp->snd_nxt)) {
    *rexmit = REXMIT_NEW;
    return;
   }
   tp->frto = 0;
  }
 }

 if (recovered) {

  tcp_try_undo_recovery(sk);
  return;
 }
 if (tcp_is_reno(tp)) {



  if (after(tp->snd_nxt, tp->high_seq) && num_dupack)
   tcp_add_reno_sack(sk, num_dupack);
  else if (flag & FLAG_SND_UNA_ADVANCED)
   tcp_reset_reno_sack(tp);
 }
 *rexmit = REXMIT_LOST;
}
