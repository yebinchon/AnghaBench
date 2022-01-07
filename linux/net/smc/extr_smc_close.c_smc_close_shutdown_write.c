
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {long sk_lingertime; int sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct smc_connection {int tx_work; } ;
struct smc_sock {struct sock sk; struct smc_connection conn; } ;
struct TYPE_2__ {int flags; } ;


 int PF_EXITING ;




 long SMC_MAX_STREAM_WAIT_TIMEOUT ;





 int SOCK_LINGER ;
 int cancel_delayed_work_sync (int *) ;
 TYPE_1__* current ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int smc_cdc_rxed_any_close (struct smc_connection*) ;
 int smc_close_stream_wait (struct smc_sock*,long) ;
 int smc_close_wr (struct smc_connection*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int stub1 (struct sock*) ;

int smc_close_shutdown_write(struct smc_sock *smc)
{
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
 case 136:
  smc_close_stream_wait(smc, timeout);
  release_sock(sk);
  cancel_delayed_work_sync(&conn->tx_work);
  lock_sock(sk);
  if (sk->sk_state != 136)
   goto again;

  rc = smc_close_wr(conn);
  if (rc)
   break;
  sk->sk_state = 131;
  break;
 case 135:

  if (!smc_cdc_rxed_any_close(conn))
   smc_close_stream_wait(smc, timeout);
  release_sock(sk);
  cancel_delayed_work_sync(&conn->tx_work);
  lock_sock(sk);
  if (sk->sk_state != 135)
   goto again;

  rc = smc_close_wr(conn);
  if (rc)
   break;
  sk->sk_state = 134;
  break;
 case 134:
 case 129:
 case 131:
 case 130:
 case 133:
 case 128:
 case 132:

  break;
 }

 if (old_state != sk->sk_state)
  sk->sk_state_change(sk);
 return rc;
}
