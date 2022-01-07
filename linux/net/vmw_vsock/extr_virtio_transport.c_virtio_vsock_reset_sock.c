
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_error_report ) (struct sock*) ;int sk_err; int sk_state; } ;


 int ECONNRESET ;
 int TCP_CLOSE ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void virtio_vsock_reset_sock(struct sock *sk)
{
 lock_sock(sk);
 sk->sk_state = TCP_CLOSE;
 sk->sk_err = ECONNRESET;
 sk->sk_error_report(sk);
 release_sock(sk);
}
