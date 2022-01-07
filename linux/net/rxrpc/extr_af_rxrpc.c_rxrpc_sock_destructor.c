
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_socket; int sk_wmem_alloc; int sk_receive_queue; } ;


 int SOCK_DEAD ;
 int WARN_ON (int) ;
 int _enter (char*,struct sock*) ;
 int printk (char*,struct sock*) ;
 int refcount_read (int *) ;
 int rxrpc_purge_queue (int *) ;
 int sk_unhashed (struct sock*) ;
 int sock_flag (struct sock*,int ) ;

__attribute__((used)) static void rxrpc_sock_destructor(struct sock *sk)
{
 _enter("%p", sk);

 rxrpc_purge_queue(&sk->sk_receive_queue);

 WARN_ON(refcount_read(&sk->sk_wmem_alloc));
 WARN_ON(!sk_unhashed(sk));
 WARN_ON(sk->sk_socket);

 if (!sock_flag(sk, SOCK_DEAD)) {
  printk("Attempt to release alive rxrpc socket: %p\n", sk);
  return;
 }
}
