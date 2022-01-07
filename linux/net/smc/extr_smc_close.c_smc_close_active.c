
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {long sk_lingertime; int sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct smc_cdc_conn_state_flags {int peer_done_writing; } ;
struct TYPE_5__ {struct smc_cdc_conn_state_flags conn_state_flags; } ;
struct smc_connection {int tx_work; TYPE_1__ local_tx_ctrl; } ;
struct smc_sock {int tcp_listen_work; TYPE_3__* clcsock; struct sock sk; struct smc_connection conn; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {TYPE_2__* sk; } ;
struct TYPE_6__ {int (* sk_data_ready ) (TYPE_2__*) ;} ;


 int PF_EXITING ;
 int SHUT_RDWR ;







 long SMC_MAX_STREAM_WAIT_TIMEOUT ;





 int SOCK_LINGER ;
 int cancel_delayed_work_sync (int *) ;
 TYPE_4__* current ;
 int flush_work (int *) ;
 int kernel_sock_shutdown (TYPE_3__*,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int smc_cdc_rxed_any_close (struct smc_connection*) ;
 int smc_close_abort (struct smc_connection*) ;
 int smc_close_cleanup_listen (struct sock*) ;
 int smc_close_final (struct smc_connection*) ;
 int smc_close_sent_any_close (struct smc_connection*) ;
 int smc_close_stream_wait (struct smc_sock*,long) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (TYPE_2__*) ;
 int stub3 (struct sock*) ;

int smc_close_active(struct smc_sock *smc)
{
 struct smc_cdc_conn_state_flags *txflags =
  &smc->conn.local_tx_ctrl.conn_state_flags;
 struct smc_connection *conn = &smc->conn;
 struct sock *sk = &smc->sk;
 int old_state;
 long timeout;
 int rc = 0;

 timeout = current->flags & PF_EXITING ?
    0 : sock_flag(sk, SOCK_LINGER) ?
        sk->sk_lingertime : SMC_MAX_STREAM_WAIT_TIMEOUT;

 old_state = sk->sk_state;
again:
 switch (sk->sk_state) {
 case 134:
  sk->sk_state = 135;
  break;
 case 133:
  sk->sk_state = 135;
  sk->sk_state_change(sk);
  if (smc->clcsock && smc->clcsock->sk) {
   rc = kernel_sock_shutdown(smc->clcsock, SHUT_RDWR);

   smc->clcsock->sk->sk_data_ready(smc->clcsock->sk);
  }
  smc_close_cleanup_listen(sk);
  release_sock(sk);
  flush_work(&smc->tcp_listen_work);
  lock_sock(sk);
  break;
 case 139:
  smc_close_stream_wait(smc, timeout);
  release_sock(sk);
  cancel_delayed_work_sync(&conn->tx_work);
  lock_sock(sk);
  if (sk->sk_state == 139) {

   rc = smc_close_final(conn);
   if (rc)
    break;
   sk->sk_state = 131;
  } else {

   goto again;
  }
  break;
 case 136:

  if (txflags->peer_done_writing &&
      !smc_close_sent_any_close(conn)) {

   rc = smc_close_final(conn);
   if (rc)
    break;
  }
  sk->sk_state = 135;
  break;
 case 138:
 case 137:
  if (!smc_cdc_rxed_any_close(conn))
   smc_close_stream_wait(smc, timeout);
  release_sock(sk);
  cancel_delayed_work_sync(&conn->tx_work);
  lock_sock(sk);
  if (sk->sk_state != 138 &&
      sk->sk_state != 137)
   goto again;

  rc = smc_close_final(conn);
  if (rc)
   break;
  if (smc_cdc_rxed_any_close(conn)) {

   sk->sk_state = 135;
   sock_put(sk);
  } else {

   sk->sk_state = 129;
  }
  break;
 case 131:
 case 130:
  if (txflags->peer_done_writing &&
      !smc_close_sent_any_close(conn)) {

   rc = smc_close_final(conn);
   if (rc)
    break;
  }

  break;
 case 129:

  break;
 case 128:
  smc_close_abort(conn);
  sk->sk_state = 135;
  break;
 case 132:
 case 135:

  break;
 }

 if (old_state != sk->sk_state)
  sk->sk_state_change(sk);
 return rc;
}
