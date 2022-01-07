
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int IUCV_CLOSED ;
 struct sock* iucv_accept_dequeue (struct sock*,int *) ;
 int iucv_sock_close (struct sock*) ;
 int iucv_sock_kill (struct sock*) ;

__attribute__((used)) static void iucv_sock_cleanup_listen(struct sock *parent)
{
 struct sock *sk;


 while ((sk = iucv_accept_dequeue(parent, ((void*)0)))) {
  iucv_sock_close(sk);
  iucv_sock_kill(sk);
 }

 parent->sk_state = IUCV_CLOSED;
}
