
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sock {int sk_state; int (* sk_state_change ) (struct sock*) ;void* sk_err; } ;
struct smc_cdc_conn_state_flags {int peer_conn_closed; } ;
struct TYPE_5__ {struct smc_cdc_conn_state_flags conn_state_flags; } ;
struct TYPE_8__ {int tx_work; TYPE_1__ local_tx_ctrl; } ;
struct smc_sock {TYPE_4__ conn; TYPE_2__* clcsock; struct sock sk; } ;
struct TYPE_7__ {int (* sk_state_change ) (TYPE_3__*) ;void* sk_err; } ;
struct TYPE_6__ {TYPE_3__* sk; } ;


 void* ECONNABORTED ;
 int SOCK_DEAD ;
 int cancel_delayed_work_sync (int *) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int smc_cdc_rxed_any_close (TYPE_4__*) ;
 int sock_put (struct sock*) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static void smc_close_active_abort(struct smc_sock *smc)
{
 struct sock *sk = &smc->sk;

 struct smc_cdc_conn_state_flags *txflags =
  &smc->conn.local_tx_ctrl.conn_state_flags;

 if (sk->sk_state != 133 && smc->clcsock && smc->clcsock->sk) {
  sk->sk_err = ECONNABORTED;
  if (smc->clcsock && smc->clcsock->sk) {
   smc->clcsock->sk->sk_err = ECONNABORTED;
   smc->clcsock->sk->sk_state_change(smc->clcsock->sk);
  }
 }
 switch (sk->sk_state) {
 case 138:
  sk->sk_state = 132;
  release_sock(sk);
  cancel_delayed_work_sync(&smc->conn.tx_work);
  lock_sock(sk);
  sock_put(sk);
  break;
 case 137:
 case 136:
  if (!smc_cdc_rxed_any_close(&smc->conn))
   sk->sk_state = 132;
  else
   sk->sk_state = 134;
  release_sock(sk);
  cancel_delayed_work_sync(&smc->conn.tx_work);
  lock_sock(sk);
  break;
 case 131:
 case 130:
  if (!txflags->peer_conn_closed) {

   sk->sk_state = 132;
  } else {
   sk->sk_state = 134;
  }
  sock_put(sk);
  break;
 case 128:
 case 135:
  sk->sk_state = 134;
  break;
 case 129:
  sock_put(sk);
  break;
 case 133:
 case 132:
 case 134:
  break;
 }

 sock_set_flag(sk, SOCK_DEAD);
 sk->sk_state_change(sk);
}
