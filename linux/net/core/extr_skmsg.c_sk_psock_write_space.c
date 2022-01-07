
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_psock {void (* saved_write_space ) (struct sock*) ;int work; } ;


 int SK_PSOCK_TX_ENABLED ;
 scalar_t__ likely (int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int schedule_work (int *) ;
 struct sk_psock* sk_psock (struct sock*) ;
 scalar_t__ sk_psock_test_state (struct sk_psock*,int ) ;

__attribute__((used)) static void sk_psock_write_space(struct sock *sk)
{
 struct sk_psock *psock;
 void (*write_space)(struct sock *sk);

 rcu_read_lock();
 psock = sk_psock(sk);
 if (likely(psock && sk_psock_test_state(psock, SK_PSOCK_TX_ENABLED)))
  schedule_work(&psock->work);
 write_space = psock->saved_write_space;
 rcu_read_unlock();
 write_space(sk);
}
