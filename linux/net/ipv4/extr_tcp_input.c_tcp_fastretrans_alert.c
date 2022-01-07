
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int probe_seq_start; } ;
struct tcp_sock {scalar_t__ retrans_out; int snd_cwnd; TYPE_2__ mtu_probe; int snd_una; int high_seq; scalar_t__ retrans_stamp; scalar_t__ prior_ssthresh; scalar_t__ sacked_out; int packets_out; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {int probe_size; } ;
struct inet_connection_sock {int icsk_ca_state; TYPE_1__ icsk_mtup; } ;


 int FLAG_DATA_SACKED ;
 int FLAG_ECE ;
 int FLAG_LOST_RETRANS ;
 int FLAG_SND_UNA_ADVANCED ;
 int REXMIT_LOST ;

 int TCP_CA_Disorder ;

 int TCP_CA_Open ;

 int WARN_ON (int) ;
 int before (int ,int ) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int tcp_add_reno_sack (struct sock*,int) ;
 scalar_t__ tcp_check_sack_reneging (struct sock*,int) ;
 int tcp_end_cwnd_reduction (struct sock*) ;
 int tcp_enter_recovery (struct sock*,int) ;
 scalar_t__ tcp_force_fast_retransmit (struct sock*) ;
 int tcp_identify_packet_loss (struct sock*,int*) ;
 int tcp_is_rack (struct sock*) ;
 int tcp_is_reno (struct tcp_sock*) ;
 int tcp_mtup_probe_failed (struct sock*) ;
 int tcp_process_loss (struct sock*,int,int,int*) ;
 int tcp_reset_reno_sack (struct tcp_sock*) ;
 int tcp_set_ca_state (struct sock*,int) ;
 int tcp_simple_retransmit (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_time_to_recover (struct sock*,int) ;
 int tcp_try_keep_open (struct sock*) ;
 int tcp_try_to_open (struct sock*,int) ;
 int tcp_try_undo_dsack (struct sock*) ;
 int tcp_try_undo_partial (struct sock*,int const) ;
 int tcp_try_undo_recovery (struct sock*) ;
 int tcp_update_scoreboard (struct sock*,int) ;
 int tcp_verify_left_out (struct tcp_sock*) ;

__attribute__((used)) static void tcp_fastretrans_alert(struct sock *sk, const u32 prior_snd_una,
      int num_dupack, int *ack_flag, int *rexmit)
{
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 int fast_rexmit = 0, flag = *ack_flag;
 bool do_lost = num_dupack || ((flag & FLAG_DATA_SACKED) &&
          tcp_force_fast_retransmit(sk));

 if (!tp->packets_out && tp->sacked_out)
  tp->sacked_out = 0;



 if (flag & FLAG_ECE)
  tp->prior_ssthresh = 0;


 if (tcp_check_sack_reneging(sk, flag))
  return;


 tcp_verify_left_out(tp);



 if (icsk->icsk_ca_state == TCP_CA_Open) {
  WARN_ON(tp->retrans_out != 0);
  tp->retrans_stamp = 0;
 } else if (!before(tp->snd_una, tp->high_seq)) {
  switch (icsk->icsk_ca_state) {
  case 130:


   if (tp->snd_una != tp->high_seq) {
    tcp_end_cwnd_reduction(sk);
    tcp_set_ca_state(sk, TCP_CA_Open);
   }
   break;

  case 128:
   if (tcp_is_reno(tp))
    tcp_reset_reno_sack(tp);
   if (tcp_try_undo_recovery(sk))
    return;
   tcp_end_cwnd_reduction(sk);
   break;
  }
 }


 switch (icsk->icsk_ca_state) {
 case 128:
  if (!(flag & FLAG_SND_UNA_ADVANCED)) {
   if (tcp_is_reno(tp))
    tcp_add_reno_sack(sk, num_dupack);
  } else {
   if (tcp_try_undo_partial(sk, prior_snd_una))
    return;

   do_lost = tcp_is_reno(tp) ||
      tcp_force_fast_retransmit(sk);
  }
  if (tcp_try_undo_dsack(sk)) {
   tcp_try_keep_open(sk);
   return;
  }
  tcp_identify_packet_loss(sk, ack_flag);
  break;
 case 129:
  tcp_process_loss(sk, flag, num_dupack, rexmit);
  tcp_identify_packet_loss(sk, ack_flag);
  if (!(icsk->icsk_ca_state == TCP_CA_Open ||
        (*ack_flag & FLAG_LOST_RETRANS)))
   return;


 default:
  if (tcp_is_reno(tp)) {
   if (flag & FLAG_SND_UNA_ADVANCED)
    tcp_reset_reno_sack(tp);
   tcp_add_reno_sack(sk, num_dupack);
  }

  if (icsk->icsk_ca_state <= TCP_CA_Disorder)
   tcp_try_undo_dsack(sk);

  tcp_identify_packet_loss(sk, ack_flag);
  if (!tcp_time_to_recover(sk, flag)) {
   tcp_try_to_open(sk, flag);
   return;
  }


  if (icsk->icsk_ca_state < 130 &&
      icsk->icsk_mtup.probe_size &&
      tp->snd_una == tp->mtu_probe.probe_seq_start) {
   tcp_mtup_probe_failed(sk);

   tp->snd_cwnd++;
   tcp_simple_retransmit(sk);
   return;
  }


  tcp_enter_recovery(sk, (flag & FLAG_ECE));
  fast_rexmit = 1;
 }

 if (!tcp_is_rack(sk) && do_lost)
  tcp_update_scoreboard(sk, fast_rexmit);
 *rexmit = REXMIT_LOST;
}
