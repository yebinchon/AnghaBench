
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct smc_cdc_conn_state_flags {int peer_done_writing; } ;
struct TYPE_3__ {struct smc_cdc_conn_state_flags conn_state_flags; } ;
struct TYPE_4__ {TYPE_1__ local_tx_ctrl; } ;
struct smc_sock {TYPE_2__ conn; struct sock sk; } ;






 void* SMC_CLOSED ;






 int smc_close_sent_any_close (TYPE_2__*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void smc_close_passive_abort_received(struct smc_sock *smc)
{
 struct smc_cdc_conn_state_flags *txflags =
  &smc->conn.local_tx_ctrl.conn_state_flags;
 struct sock *sk = &smc->sk;

 switch (sk->sk_state) {
 case 133:
 case 137:
 case 136:
  sk->sk_state = 128;
  sock_put(sk);
  break;
 case 134:
  sk->sk_state = 128;
  break;
 case 131:
 case 130:
  if (txflags->peer_done_writing &&
      !smc_close_sent_any_close(&smc->conn))

   sk->sk_state = 128;
  else
   sk->sk_state = SMC_CLOSED;
  sock_put(sk);
  break;
 case 135:
 case 129:
  sk->sk_state = SMC_CLOSED;
  sock_put(sk);
  break;
 case 132:
  sk->sk_state = SMC_CLOSED;
  break;
 case 128:

  break;
 }
}
