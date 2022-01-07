
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int sk_state; } ;
struct ccid3_hc_tx_sock {scalar_t__ tx_state; int tx_t_rto; scalar_t__ tx_p; int tx_x; int tx_x_calc; int tx_x_recv; int tx_t_ipi; int tx_no_feedback_timer; scalar_t__ tx_s; struct sock* sk; } ;
typedef int __u64 ;


 int DCCPF_OPEN ;
 int DCCPF_PARTOPEN ;
 unsigned long TFRC_INITIAL_TIMEOUT ;
 scalar_t__ TFRC_SSTATE_FBACK ;
 int TFRC_SSTATE_NO_FBACK ;
 int TFRC_T_MBI ;
 int USEC_PER_SEC ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int ccid3_hc_tx_set_state (struct sock*,int ) ;
 int ccid3_hc_tx_update_x (struct sock*,int *) ;
 int ccid3_pr_debug (char*,unsigned long long,...) ;
 int ccid3_tx_state_name (scalar_t__) ;
 int ccid3_update_send_interval (struct ccid3_hc_tx_sock*) ;
 int dccp_role (struct sock*) ;
 struct ccid3_hc_tx_sock* from_timer (int ,struct timer_list*,int ) ;
 struct ccid3_hc_tx_sock* hc ;
 scalar_t__ jiffies ;
 void* max (int,int) ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int tx_no_feedback_timer ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usecs_to_jiffies (unsigned long) ;

__attribute__((used)) static void ccid3_hc_tx_no_feedback_timer(struct timer_list *t)
{
 struct ccid3_hc_tx_sock *hc = from_timer(hc, t, tx_no_feedback_timer);
 struct sock *sk = hc->sk;
 unsigned long t_nfb = USEC_PER_SEC / 5;

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk)) {


  goto restart_timer;
 }

 ccid3_pr_debug("%s(%p, state=%s) - entry\n", dccp_role(sk), sk,
         ccid3_tx_state_name(hc->tx_state));


 if ((1 << sk->sk_state) & ~(DCCPF_OPEN | DCCPF_PARTOPEN))
  goto out;


 if (hc->tx_state == TFRC_SSTATE_FBACK)
  ccid3_hc_tx_set_state(sk, TFRC_SSTATE_NO_FBACK);





 if (hc->tx_t_rto == 0 || hc->tx_p == 0) {


  hc->tx_x = max(hc->tx_x / 2,
          (((__u64)hc->tx_s) << 6) / TFRC_T_MBI);
  ccid3_update_send_interval(hc);
 } else {
  if (hc->tx_x_calc > (hc->tx_x_recv >> 5))
   hc->tx_x_recv =
    max(hc->tx_x_recv / 2,
        (((__u64)hc->tx_s) << 6) / (2*TFRC_T_MBI));
  else {
   hc->tx_x_recv = hc->tx_x_calc;
   hc->tx_x_recv <<= 4;
  }
  ccid3_hc_tx_update_x(sk, ((void*)0));
 }
 ccid3_pr_debug("Reduced X to %llu/64 bytes/sec\n",
   (unsigned long long)hc->tx_x);





 if (unlikely(hc->tx_t_rto == 0))
  t_nfb = TFRC_INITIAL_TIMEOUT;
 else
  t_nfb = max(hc->tx_t_rto, 2 * hc->tx_t_ipi);

restart_timer:
 sk_reset_timer(sk, &hc->tx_no_feedback_timer,
      jiffies + usecs_to_jiffies(t_nfb));
out:
 bh_unlock_sock(sk);
 sock_put(sk);
}
