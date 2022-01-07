
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_callback_lock; } ;
struct TYPE_2__ {int strp; } ;
struct sk_psock {TYPE_1__ parser; } ;


 scalar_t__ likely (struct sk_psock*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct sk_psock* sk_psock (struct sock*) ;
 int strp_data_ready (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void sk_psock_strp_data_ready(struct sock *sk)
{
 struct sk_psock *psock;

 rcu_read_lock();
 psock = sk_psock(sk);
 if (likely(psock)) {
  write_lock_bh(&sk->sk_callback_lock);
  strp_data_ready(&psock->parser.strp);
  write_unlock_bh(&sk->sk_callback_lock);
 }
 rcu_read_unlock();
}
