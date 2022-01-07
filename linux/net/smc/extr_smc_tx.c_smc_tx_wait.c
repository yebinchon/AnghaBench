
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_shutdown; scalar_t__ sk_err; TYPE_3__* sk_socket; } ;
struct TYPE_4__ {scalar_t__ peer_done_writing; } ;
struct TYPE_5__ {TYPE_1__ conn_state_flags; } ;
struct smc_connection {int urg_tx_pend; int sndbuf_space; TYPE_2__ local_tx_ctrl; } ;
struct smc_sock {struct sock sk; struct smc_connection conn; } ;
struct TYPE_6__ {int flags; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 int EAGAIN ;
 int ECONNRESET ;
 int EPIPE ;
 int MSG_DONTWAIT ;
 int SEND_SHUTDOWN ;
 int SOCKWQ_ASYNC_NOSPACE ;
 int SOCK_NOSPACE ;
 int add_wait_queue (int ,int *) ;
 scalar_t__ atomic_read (int *) ;
 int current ;
 int remove_wait_queue (int ,int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int sk_clear_bit (int ,struct sock*) ;
 int sk_set_bit (int ,struct sock*) ;
 int sk_sleep (struct sock*) ;
 int sk_wait_event (struct sock*,long*,int,int *) ;
 scalar_t__ smc_cdc_rxed_any_close (struct smc_connection*) ;
 int sock_intr_errno (long) ;
 long sock_sndtimeo (struct sock*,int) ;
 int wait ;
 int woken_wake_function ;

__attribute__((used)) static int smc_tx_wait(struct smc_sock *smc, int flags)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 struct smc_connection *conn = &smc->conn;
 struct sock *sk = &smc->sk;
 long timeo;
 int rc = 0;


 timeo = sock_sndtimeo(sk, flags & MSG_DONTWAIT);
 add_wait_queue(sk_sleep(sk), &wait);
 while (1) {
  sk_set_bit(SOCKWQ_ASYNC_NOSPACE, sk);
  if (sk->sk_err ||
      (sk->sk_shutdown & SEND_SHUTDOWN) ||
      conn->local_tx_ctrl.conn_state_flags.peer_done_writing) {
   rc = -EPIPE;
   break;
  }
  if (smc_cdc_rxed_any_close(conn)) {
   rc = -ECONNRESET;
   break;
  }
  if (!timeo) {

   set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
   rc = -EAGAIN;
   break;
  }
  if (signal_pending(current)) {
   rc = sock_intr_errno(timeo);
   break;
  }
  sk_clear_bit(SOCKWQ_ASYNC_NOSPACE, sk);
  if (atomic_read(&conn->sndbuf_space) && !conn->urg_tx_pend)
   break;
  set_bit(SOCK_NOSPACE, &sk->sk_socket->flags);
  sk_wait_event(sk, &timeo,
         sk->sk_err ||
         (sk->sk_shutdown & SEND_SHUTDOWN) ||
         smc_cdc_rxed_any_close(conn) ||
         (atomic_read(&conn->sndbuf_space) &&
          !conn->urg_tx_pend),
         &wait);
 }
 remove_wait_queue(sk_sleep(sk), &wait);
 return rc;
}
