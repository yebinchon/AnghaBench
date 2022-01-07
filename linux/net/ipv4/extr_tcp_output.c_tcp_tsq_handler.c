
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_tsq_flags; } ;


 int TCP_TSQ_DEFERRED ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int sock_hold (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 int tcp_tsq_write (struct sock*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void tcp_tsq_handler(struct sock *sk)
{
 bh_lock_sock(sk);
 if (!sock_owned_by_user(sk))
  tcp_tsq_write(sk);
 else if (!test_and_set_bit(TCP_TSQ_DEFERRED, &sk->sk_tsq_flags))
  sock_hold(sk);
 bh_unlock_sock(sk);
}
