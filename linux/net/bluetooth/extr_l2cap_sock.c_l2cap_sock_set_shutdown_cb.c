
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_shutdown; } ;
struct l2cap_chan {struct sock* data; } ;


 int SHUTDOWN_MASK ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static void l2cap_sock_set_shutdown_cb(struct l2cap_chan *chan)
{
 struct sock *sk = chan->data;

 lock_sock(sk);
 sk->sk_shutdown = SHUTDOWN_MASK;
 release_sock(sk);
}
