
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unix_sock {scalar_t__ addr; } ;
struct sock {int sk_socket; int sk_prot; int sk_wmem_alloc; int sk_receive_queue; } ;


 int SOCK_DEAD ;
 int WARN_ON (int) ;
 int atomic_long_dec (int *) ;
 int atomic_long_read (int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int pr_debug (char*,struct sock*,int ) ;
 int pr_info (char*,struct sock*) ;
 int refcount_read (int *) ;
 int sk_unhashed (struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_flag (struct sock*,int ) ;
 int sock_net (struct sock*) ;
 int sock_prot_inuse_add (int ,int ,int) ;
 int unix_nr_socks ;
 int unix_release_addr (scalar_t__) ;
 struct unix_sock* unix_sk (struct sock*) ;

__attribute__((used)) static void unix_sock_destructor(struct sock *sk)
{
 struct unix_sock *u = unix_sk(sk);

 skb_queue_purge(&sk->sk_receive_queue);

 WARN_ON(refcount_read(&sk->sk_wmem_alloc));
 WARN_ON(!sk_unhashed(sk));
 WARN_ON(sk->sk_socket);
 if (!sock_flag(sk, SOCK_DEAD)) {
  pr_info("Attempt to release alive unix socket: %p\n", sk);
  return;
 }

 if (u->addr)
  unix_release_addr(u->addr);

 atomic_long_dec(&unix_nr_socks);
 local_bh_disable();
 sock_prot_inuse_add(sock_net(sk), sk->sk_prot, -1);
 local_bh_enable();




}
