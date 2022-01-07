
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;


 scalar_t__ TCP_CLOSE ;
 int __inet_hash (struct sock*,int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;

int inet6_hash(struct sock *sk)
{
 int err = 0;

 if (sk->sk_state != TCP_CLOSE) {
  local_bh_disable();
  err = __inet_hash(sk, ((void*)0));
  local_bh_enable();
 }

 return err;
}
