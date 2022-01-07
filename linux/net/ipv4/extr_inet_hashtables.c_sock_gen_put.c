
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int sk_refcnt; } ;


 scalar_t__ TCP_NEW_SYN_RECV ;
 scalar_t__ TCP_TIME_WAIT ;
 int inet_reqsk (struct sock*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_free (int ) ;
 int refcount_dec_and_test (int *) ;
 int reqsk_free (int ) ;
 int sk_free (struct sock*) ;

void sock_gen_put(struct sock *sk)
{
 if (!refcount_dec_and_test(&sk->sk_refcnt))
  return;

 if (sk->sk_state == TCP_TIME_WAIT)
  inet_twsk_free(inet_twsk(sk));
 else if (sk->sk_state == TCP_NEW_SYN_RECV)
  reqsk_free(inet_reqsk(sk));
 else
  sk_free(sk);
}
