
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_err; } ;
struct smc_sock {int wait_close_tx_prepared; int conn; struct sock sk; } ;


 int DEFINE_WAIT_FUNC (int ,int ) ;
 scalar_t__ ECONNABORTED ;
 scalar_t__ ECONNRESET ;
 int add_wait_queue (int ,int *) ;
 int current ;
 int remove_wait_queue (int ,int *) ;
 int signal_pending (int ) ;
 int sk_sleep (struct sock*) ;
 int sk_wait_event (struct sock*,long*,int,int *) ;
 int smc_tx_prepared_sends (int *) ;
 int wait ;
 int woken_wake_function ;

__attribute__((used)) static void smc_close_stream_wait(struct smc_sock *smc, long timeout)
{
 DEFINE_WAIT_FUNC(wait, woken_wake_function);
 struct sock *sk = &smc->sk;

 if (!timeout)
  return;

 if (!smc_tx_prepared_sends(&smc->conn))
  return;

 smc->wait_close_tx_prepared = 1;
 add_wait_queue(sk_sleep(sk), &wait);
 while (!signal_pending(current) && timeout) {
  int rc;

  rc = sk_wait_event(sk, &timeout,
       !smc_tx_prepared_sends(&smc->conn) ||
       (sk->sk_err == ECONNABORTED) ||
       (sk->sk_err == ECONNRESET),
       &wait);
  if (rc)
   break;
 }
 remove_wait_queue(sk_sleep(sk), &wait);
 smc->wait_close_tx_prepared = 0;
}
